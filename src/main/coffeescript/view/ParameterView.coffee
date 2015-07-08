PRIMITIVES = ['boolean', 'integer', 'number', 'string', 'array[boolean]', 'array[integer]', 'array[number]', 'array[string]']
class ParameterView extends Backbone.View
  initialize: ->
    Handlebars.registerHelper 'isArray',
      (param, opts) ->
        if param.type.toLowerCase() == 'array' || param.allowMultiple
          opts.fn(@)
        else
          opts.inverse(@)

  render: ->
    type = @model.param.type || @model.param.dataType
    @model.param.isBody = true if @model.param.paramType == 'body'
    @model.param.isFile = true if (type || '').toLowerCase() == 'file'

    template = @template()
    $(@el).html(template(@model.param))

    modelAnchor = type
    modelLabel = type
    if modelAnchor.indexOf('[') >= 0
      modelAnchor = modelAnchor.replace(/(array)?\[/, 'ArrayOf').replace(/\]/, '')
      modelLabel = modelLabel.replace(/(array)?\[/, 'Array of ').replace(/\]/, '')
    if @model.param.format
      modelLabel += ", <span class=\"propFormat\">#{@model.param.format}</span>"
    if @model.param.pattern
      modelLabel += ", <span class=\"propPattern\">/#{@model.param.pattern}/</span>"
    if @model.param.minimum || @model.param.maximum
      modelLabel += ", <span class=\"propValueRange\">(#{@model.param.minimum || 0}...#{this.maximum || '*'})</span>"
    if @model.param.minLength || @model.param.maxLength
      modelLabel += ", <span class=\"propLengthRange\">{'+(@model.param.minLength || this.required ? 1 : 0)+'...'+(this.maxLength || '*')+'}</span>"
    if @model.param.minItems || @model.param.maxItems
      modelLabel += ", <span class=\"propItemsRange\">[#{@model.param.minItems || Number(@model.param.required)}...#{@model.param.maxItems || '*'}]</span>"
    if type in PRIMITIVES
      sampleJSON = null
      signature = null
    else
      sampleJSON = if typeof @model.param.sampleJSON == 'function' then @model.param.sampleJSON(@model.param) else @model.param.sampleJSON
      signature = if typeof @model.param.signature == 'function' then @model.param.signature(@model.param) else @model.param.signature
    signatureModel =
      parentId: @model.container.resourceName.replace(/[\/.]/g, '_'),
      nickname: @model.container.nickname,
      modelAnchor: modelAnchor,
      sampleJSON: sampleJSON
      isParam: true
      signature: signature
      modelLabel: modelLabel

    if @model.param.sampleJSON
      signatureView = new SignatureView({model: signatureModel, tagName: 'div'})
      $('.model-signature', $(@el)).append signatureView.render().el
    else
      $('.model-signature', $(@el)).html(@model.param.signature)

    isParam = false

    if @model.param.isBody
      isParam = true

    contentTypeModel =
      isParam: isParam

    contentTypeModel.consumes = @model.param.consumes

    if isParam
      parameterContentTypeView = new ParameterContentTypeView({model: contentTypeModel})
      $('.parameter-content-type', $(@el)).append parameterContentTypeView.render().el

    else
      responseContentTypeView = new ResponseContentTypeView({model: contentTypeModel})
      $('.response-content-type', $(@el)).append responseContentTypeView.render().el

    @

  # Return an appropriate template based on if the parameter is a list, readonly, required
  template: ->
    if @model.param.isList
      Handlebars.templates.param_list
    else
      if @options.readOnly
        if @model.param.required
          Handlebars.templates.param_readonly_required
        else
          Handlebars.templates.param_readonly
      else
        if @model.param.required
          Handlebars.templates.param_required
        else
          Handlebars.templates.param
