'use strict';

SwaggerUi.Views.ResourceView = Backbone.View.extend({
  initialize: function(opts) {
    opts = opts || {};
    this.router = opts.router;
    this.auths = opts.auths;
    if ('' === this.model.description) {
      this.model.description = null;
    }
    if (this.model.description) {
      this.model.summary = this.model.description;
    }

    var fragments = Docs.getFragments();
    if (fragments.length) {
      this.selectedResource = fragments;
    }
  },

  render: function() {
    var methods = {};


    $(this.el).html(Handlebars.templates.resource(this.model));

    // save each operation to render on click of model
    var modelId = this.model.id;
    this.operationsObj = this.operationsObj || {};
    this.operationsObj[modelId] = {
      operations: []
    };
    for (var i = 0; i < this.model.operationsArray.length; i++) {
      var operation = this.model.operationsArray[i];
      var counter = 0;
      var id = operation.nickname;
      while (typeof methods[id] !== 'undefined') {
        id = id + '_' + counter;
        counter += 1;
      }
      methods[id] = operation;
      operation.nickname = id;
      operation.parentId = modelId;
      if (this.selectedResource && this.selectedResource[0] === modelId) {
        this.addOperation(operation);
        delete this.operationsObj[modelId];
      } else {
        this.operationsObj[modelId].operations.push(operation);
      }
    }

    $('.toggleEndpointList', this.el).click(this.callDocs.bind(this, 'toggleEndpointListForResource'));
    $('.collapseResource', this.el).click(this.callDocs.bind(this, 'collapseOperationsForResource'));
    $('.expandResource', this.el).click(this.callDocs.bind(this, 'expandOperationsForResource'));
    return this;
  },

  addOperation: function(operation) {
    operation.number = this.number;

    // Render an operation and add it to operations li
    var operationView = new SwaggerUi.Views.OperationView({
      model: operation,
      router: this.router,
      tagName: 'li',
      className: 'endpoint',
      swaggerOptions: this.options.swaggerOptions,
      auths: this.auths
    });

    $('.endpoints', $(this.el)).append(operationView.render().el);

    this.number++;

  },
  // Generic Event handler (`Docs` is global)


  callDocs: function(fnName, e) {
    e.preventDefault();
    var modelId = this.model.id;
    this.renderResources(modelId);
    Docs[fnName](e.currentTarget.getAttribute('data-id'));
  },
  renderResources: function(modelId) {
    if (this.operationsObj && this.operationsObj[modelId]) {
      var operations = this.operationsObj[modelId].operations;
      operations.forEach(function(d) {
        this.addOperation(d);
      }.bind(this));
      delete this.operationsObj[modelId];
    }
  }
});