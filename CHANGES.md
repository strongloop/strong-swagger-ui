2015-07-08, Version 20.0.0
==========================

 * Fix "Expand Operations" link (Miroslav Bajtoš)

 * Use strong-swagger-client instead of swagger-client (Miroslav Bajtoš)

 * Add back maxwidth in standalone mode (Miroslav Bajtoš)

 * Refactored to visualize more parameter and property restrictions (Shelby Sanders)

 * Corrected to replace '/' and '.' in anchors, since they break the shebang logic (Shelby Sanders)

 * Changed to never show Response Class, because it must be in Swagger Spec for Code Gen to work (Shelby Sanders)

 * Added better higlight of required params, with indication other than color/weight, and support for select and read-only (Shelby Sanders)

 * Corrected shebang() to avoid closing Model when called an even number of times (Shelby Sanders)

 * Added option for headersToHide in order to optionally hide arbitrary headers (e.g. Authorization) (Shelby Sanders)

 * Corrected to actually show request headers and body, rearranged sections based on probability of reference (Shelby Sanders)

 * Add default padding for when not embedded (Shelby Sanders)

 * Added better highlighting and padding for preformatted JSON and XML (Shelby Sanders)

 * Corrected styling of title and description, and refactored to remove with restrictions (Shelby Sanders)

 * Added support for HTML in title, renamed footer to info_server avoiding conflict with Bootstrap, and corrected replacement of array[ (Shelby Sanders)

 * make wider and show request parts (Nicolas Duchastel de Montrouge)

 * Changed to protect against missing  when checking for file uploads (Shelby Sanders)

 * Added support for basePaths to document across multiple environments (Shelby Sanders)

 * Refactored column widths to better use space for likely growing content (Shelby Sanders)

 * Added support for anchoring to first reference of a Model (Shelby Sanders)

 * Defer creation of signature and sampleJSON, so all Models will be loaded (Shelby Sanders)

 * Omit divs for info.title and info.description if they're absent (Shelby Sanders)

 * Removed inappropriate commas from sorters (Shelby Sanders)

 * Corrected to avoid showing invalid Model and Model Schema is missing or void (Shelby Sanders)

 * Added guard against null mockSignature (Shelby Sanders)

 * Removed 'Implementation Notes' label since it's just noise, widened Resource expansion anchor to full label (Shelby Sanders)

 * Corrected to work when loading resources from file:// (Shelby Sanders)

 * Added support for primitives in StatusCodeView (Shelby Sanders)

 * Add support for toggling Model and Schema, instead of just expanding (Shelby Sanders)

 * Ensure Response Content Type is shown regardless of Response Class (Shelby Sanders)

 * Collapse and label responseModel description by default (Shelby Sanders)

 * Added support for multiple responseMessages from Swagger 1.2 (Shelby Sanders)

 * Changed to hide the message-bar when no message (Miroslav Bajtoš)

 * Add minimal test (Miroslav Bajtoš)

 * Remove src/main/css from version control. (Miroslav Bajtoš)

 * Remove lib/swagger.js from version control (Miroslav Bajtoš)

 * Rename the module to strong-swagger-ui (Miroslav Bajtoš)

 * Fix project infrastructure (Miroslav Bajtoš)

 * Use handlebars from npm. (dblock)


2014-09-12, Version 2.0.24
==========================

 * updated client, version (Tony Tam)

 * Remove inline event handlers from resource template. (Samuel Reed)

 * rebuilt (Tony Tam)

 * Fix potential self XSS in request url. (Samuel Reed)

 * Moved reference to throbber.gif to CSS file. (Bez Hermoso)

 * Fixed oauth redirect url path. URL works with nested pathnames. (Antek Drzewiecki)


2014-08-06, Version 2.0.22
==========================

 * fixes for https://github.com/wordnik/swagger-js/issues/107 (Tony Tam)


2014-08-02, Version 2.0.21
==========================

 * updated swagger-js (Tony Tam)


2014-08-02, Version 2.0.20
==========================

 * updated swagger-js, added #507 to dist (Tony Tam)

 * Provide option highlightSizeThreshold to allow conditional syntax highlighting based on response size (John Bryson)


2014-08-01, Version 2.0.19
==========================

 * updated versions (Tony Tam)

 * rebuilt (Tony Tam)

 * updated templates to support file as body or form params (Tony Tam)

 * updated logger to avoid logging arrays (Tony Tam)

 * updated key name (Tony Tam)

 * updated swagger-js to 2.0.34 (Tony Tam)

 * provide option sorter=[alpha|method] (Chris Hatch)

 * fixed undefined variable errors (aurelian)

 * remove console.info (Chris Hatch)

 * #254 alphabetical sort of apis and operations under apis new option sortAlphabetical=true|false (Chris Hatch)

 * updated distro to include #493 (Tony Tam)

 * Fix for issue #492; HTML in response headers (Martijn van der Lee)


2014-07-12, Version 2.0.18
==========================

 * switched to snippet view #491 (Tony Tam)

 * updated versions, swagger-js (Tony Tam)

 * fixed #340 with empty body, updated swagger-js (Tony Tam)

 * Fix handling for jQuery response headers (Travis Illig)

 * Update underscore-min.js (paladox2015)

 * updated to support explicit keys (Tony Tam)

 * The list of scopes now RFC6749 Sec.3.3 compliant (Jörg Adler)


2014-05-14, Version 2.0.17
==========================



2014-05-14, Version 2.0.17
==========================

 * bumped version (Tony Tam)

 * fix for upload with no files (Tony Tam)

 * updated with version number (Tony Tam)

 * Updated index.html to include css links for print media (Samuel Raghunath)


2014-04-29, Version 2.0.16
==========================

 * updated version for release (Tony Tam)

 * rebuilt distro for #331 (Tony Tam)

 * ~ "Error Status Codes" -> "Response Messages" + "Response Model" column in OperationView template + Response Model in Response Messages (FilippQoma)


2014-04-27, Version 2.0.15
==========================

 * updated swagger.js version (Tony Tam)

 * added emitting version into swagger-ui.js file (Tony Tam)

 * moved css scoping to less templates per owners request, converted highlight.default.css to less, and made reset css its only include as it is difficult to scope due to html and body tag css overrides (Kyle J. Ginavan)

 * added scope to swagger, therefore, it can be included/embedded within other applications and not have css bleed. (Kyle J. Ginavan)

 * Update README.md (Pat)

 * Update README.md (webron)

 * updated oauth2 support into a single config (Tony Tam)

 * merged from oauth2 branch (Tony Tam)

 * Add index.js file that returns the dist location and version when required (Paul Winkler)


2014-03-19, Version 2.0.14
==========================

 * updated swagger-js, version (Tony Tam)

 * Create LICENSE (webron)

 * rebuilt per #417 (Tony Tam)

 * rebuilt per #418 (Tony Tam)

 * added options styling, swagger-js update, per #420 (Tony Tam)

 * Fix header response on file upload (Johan.Bloemberg)

 * Don't send empty form fields as undefined for file uploads (Johan.Bloemberg)

 * Modified commit for the https://github.com/wordnik/swagger-ui/pull/414 Brings backward compatibility for the 'allowMultiple' attribute. (valdemon)

 * rebuilt (Tony Tam)

 * updated client (Tony Tam)

 * fix for toggle operation (Tony Tam)

 * Fix content and response url on file uploads (Johan.Bloemberg)

 * fixed id construction in toggleOperationContent (Joyce Stack)

 * fix for #410, varibles declared in closures cause ie8 pains (Tony Tam)

 * updated files (Tony Tam)

 * ie8 fixes (Tony Tam)

 * fix for https://github.com/wordnik/swagger-js/issues/81 (Tony Tam)


2014-02-19, Version 2.0.12
==========================

 * updated swagger-js (Tony Tam)


2014-02-19, Version 2.0.11
==========================

 * updated swagger-js version (Tony Tam)

 * fix for https://github.com/wordnik/swagger-ui/pull/399 (Tony Tam)

 * fix for array params (Tony Tam)


2014-02-16, Version 2.0.10
==========================

 * fixes for allowable values (Tony Tam)


2014-02-16, Version 2.0.9
=========================

 * updated swagger-js per https://github.com/wordnik/swagger-ui/pull/394#issuecomment-35181116 https://github.com/wordnik/swagger-ui/pull/394#issuecomment-35181116 (Tony Tam)


2014-02-13, Version 2.0.8
=========================

 * updated swagger-js versions (Tony Tam)


2014-02-12, Version 2.0.7
=========================

 * updated version (Tony Tam)

 * updated client to 2.0.13 (Tony Tam)

 * updated swagger-client (Tony Tam)

 * merge of #369, https://github.com/wordnik/swagger-js/issues/74 (Tony Tam)

 * fix for #387 (Tony Tam)

 * fix for #388 (Tony Tam)

 * fix for #381 (Tony Tam)


2014-01-23, Version 2.0.4
=========================

 * updated version (Tony Tam)

 * updated swagger-js client, support for IE8 (Tony Tam)

 * updated swagger-js version to address #377, #72 (Tony Tam)

 * Added support for pretty-printing responses for media types with extended subtypes. For example the media type 'application/vnd.myresource+json; version=1.2' will be correctly recognized as JSON and pretty-printed. Conforms to RFC 6838, 6839. (Michael Iles)

 * fix for #248 (Tony Tam)

 * Update README.md (Tony Tam)

 * safe-JSON-parsing-check-for-type-undefined (invincible)

 * rebuilt client (Tony Tam)

 * restrict uploaded file inputs to those in the form being submitted (Bryan Matsuo)

 * removed selfclosing tag #332 - reapplied e4d01c5 by thadudexx (Aliaksandr Autayeu)


2013-11-29, Version 2.0.3
=========================

 * updated version (Tony Tam)

 * fix for #288 (Tony Tam)

 * fix for #334 (Tony Tam)

 * Update index.html (thadudexx)

 * fixed package to include less (Tony Tam)

 * Match all image types (Takeharu Oshida)

 * Add image contents type resopnse handler (Takeharu Oshida)

 * fixing request_url updates for all operations in one resource (Pavel Puchkarev)

 * merged https://github.com/wordnik/swagger-ui/pull/323 (Tony Tam)


2013-09-26, Version 2.0.2
=========================

 * updated swagger-js (Tony Tam)

 * updating docs, change in sample and java required for build (Pavel Puchkarev)

 * merged pr for https://github.com/wordnik/swagger-js/pull/54 (Tony Tam)

 * fix for #310 (Tony Tam)

 * fixed example (Tony Tam)

 * fix for required fields showing optional (Tony Tam)

 * added resource description (Tony Tam)

 * fixed merge issue (Tony Tam)

 * fix for #301, headers being URI encoded (Tony Tam)

 * manual merge of #304 (Tony Tam)

 * manual merge of #303 (Tony Tam)

 * fix for #297, enabled throbber (Tony Tam)

 * Added proper formatting for hal+json Content-Type responses in coffeescript source file (tomrac87)

 * added enum support per #296 (Tony Tam)

 * Added proper formatting for hal+json Content-Type responses (tomrac87)


2013-08-29, Version 2.0.1
=========================

 * updated swagger-js to address sample schema issues (Tony Tam)

 * fix for #279, empty boolean drop-downs (Tony Tam)


2013-08-19, Version 2.0.0
=========================

 * fixed responseMessages issue per #267 (Tony Tam)

 * fixing file name -- realized the typo in the link tag was replicating one in the css file name (Robert Crooks)

 * fix for issue #285 (Brightcove Learning Services)

 * fixed enum, required flags (Tony Tam)

 * updated readme (Tony Tam)

 * updated swagger-client (Tony Tam)

 * fixed petstore link (Tony Tam)

 * merged from develop branch (Tony Tam)

 * updated handlebars (Tony Tam)

 * fixes for content-type (Tony Tam)

 * updated for 1.2 support (Tony Tam)

 * removed console log, updated swagger.js (Tony Tam)

 * fixed discrepancy between handlebars precompiler and runtime (Ryan Bales)

 * merged https://github.com/wordnik/swagger-js/issues/42 (Tony Tam)

 * fix for #263 (Tony Tam)

 * fix for #261 (Tony Tam)

 * removed console logs (Tony Tam)

 * removed some logging (Tony Tam)

 * fixed default URL (Tony Tam)

 * added api info (Tony Tam)

 * updated to use petstore instead of localhost (Tony Tam)

 * added authorization support from swagger-js 2.0 (Tony Tam)

 * renamed discoveryUrl to url to match js change (Tony Tam)

 * fix for #174, #78 (Tony Tam)

 * updated to latest swagger-js (Tony Tam)

 * #199 (Tony Tam)

 * removed swagger-client dep for now, it's copied manually (Tony Tam)

 * updated deps, version (Tony Tam)

 * merged with swagger.js-2.0-develop (Tony Tam)

 * added shred library (Tony Tam)

 * added separate request and response templates (Tony Tam)

 * Update index.html (Tony Tam)

 * added support for swagger-spec 1.2 (Tony Tam)


2013-06-26, Version 1.1.15
==========================

 * updated to support 1.2 spec responseMessages (Tony Tam)

 * form data fix (Tony Tam)

 * fixed file param name (Tony Tam)

 * Create proper example JSON (George Sibble)

 * Add new column to display the paramType (Ian Forsey)

 * minor typo correction (Marsh Gardiner)

 * merged #pr175 (Tony Tam)

 * fix for #180 (Tony Tam)

 * fix for sending content-type header during GET requests (Tony Tam)

 * Making fonts call protocol agnostic so it works behind https (Paul Hill)

 * updated to support file + form params in same request (Tony Tam)

 * removed reference to downloads folder (Tony Tam)

 * don't set contentType for empty body (Johannes Dewender)


2013-03-08, Version 1.0.13
==========================

 * fixed required param bug per #163 (Tony Tam)


2013-03-05, Version 1.0.12
==========================

 * bumped version (Tony Tam)

 * More CSS cleaning. (Pepijn de Geus)

 * Fix custom bold text. (Pepijn de Geus)

 * UI improvements for parameters (input and read-only) and model description. Uses changes to swagger.js (swagger-client). (Pepijn de Geus)

 * Update to Handlebars 1.0.10+, CoffeeScript 1.5 (Pepijn de Geus)

 * toggleOperationContent to escape resource name before querying for node (Andreas Andreou)

 * updated swagger.js dependency for #136 (Tony Tam)

 * added ignore file (Tony Tam)

 * added swagger-client as dependency, renamed from  to  to avoid collisions (Tony Tam)

 * add correct link to distribution downloads (Eric Himmelreich)

 * reverted default url (Tony Tam)

 * fix for #121 (Tony Tam)

 * improved error handling (Tony Tam)

 * update for swagger.js#14, #138, #139 (Tony Tam)

 * updated README for download instructions (Tony Tam)

 * added dist folder back now that git downloads are gone (Tony Tam)

 * fixed file bug for indent issue and param type check (Tony Tam)

 * update README (Filirom1)

 * simplify build (Filirom1)


2012-12-04, Version 1.1.7
=========================

 * closes #107 (Ayush Gupta)

 * using the latest swagger.js (Ayush Gupta)

 * closes #98 (Ayush Gupta)

 * Fixing merge problem (Alberto Pose)


2012-11-27, Version 1.1.6
=========================

 * fixed duplicate model, updated example name (Tony Tam)

 * re-merged #96 (Tony Tam)

 * Adding fallback to XML when JSON response parsing fails. (Alberto Pose)

 * Update src/main/javascript/doc.js (sequielo)

 * added missing files per #100 (Tony Tam)


2012-11-25, Version 1.1.5
=========================

 * manual merge of #97 (Tony Tam)

 * Adding operation number to create a unique href for the <a/> tag. (Alberto Pose)

 * Adding JSON sample UI to response (Alberto Pose)

 * Small improvements to some titles (Alberto Pose)

 * coffeescript compiled swagger.js for #91 (Ayush Gupta)

 * fixes https://github.com/wordnik/swagger-core/issues/68 in a generic way. Should work with all params. (predicador37)

 * fix from https://github.com/wordnik/swagger-core/issues/68 (Ayush Gupta)


2012-11-19, Version 1.1.4
=========================

 * redo of PR #88, #89, #90 (Tony Tam)

 * updated to 1.1.4 (Tony Tam)

 * closes #83 (Ayush Gupta)

 * closes #84 (Ayush Gupta)

 * Adding syntax highlight to JSON snippets and responses. (Alberto Pose)

 * Removing console.log (Alberto Pose)

 * Adding 'snippet' tab to parameter datatype signature UI This new section displays how a complex datatype should look like providing some sample code for the developer using Swagger. (Alberto Pose)


2012-11-14, Version 1.1.3
=========================

 * merged pull request #42 from @tim-vandecasteele (Ayush Gupta)

 * Support console.log in IE9 (Greg MacLellan)

 * Adding response status code views (swagger.js updated). (Alberto Pose)

 * Added doctype declaration (Greg MacLellan)

 * closes #35 (Ayush Gupta)

 * closes #63 (Ayush Gupta)

 * removed unnecessary node_modules, updated some of the logic from pull request for docExpansion, onComplete and onFailure param support (Ayush Gupta)

 * upgraded handlebars and removed the need for local copy of handlebars. (Ayush Gupta)

 * code to display resources in default/list/expended style. style can be passed as a option while creating swagerUi object. In future I would like to achieve this by passing options to templates and have a template helper method manipulate dom and apply correct classes.This approach will improve the performance as we need not go over the entire dom and call Doc.collapseOperationsForResource or Doc.expandOperationsForResource on each matched element (Arjun Balla)

 * code to pass doneSuccess and doneFailure callback functions. doneSuccess is invoked after successful rendering of swagger-ui and doneFailure is invoke if there is failure in rendering swagger-ui (Arjun Balla)

 * added .project to gitignore (unknown)

 * Problem sending parameters via POST (Артём Курапов)

 * swagger-ui handlebar templates are compatible only with 1.0.5beta version (arjunballa)


2012-10-09, Version 1.1.1
=========================

 * closed #68 (Ayush Gupta)

 * Update README.md (Ayush Gupta)

 * setting content type to JSON for http PATCH (Arul)

 * added styling for patch (Ayush Gupta)

 * reformatted css for readability (Ayush Gupta)

 * Custom Header Parameters - (For Basic auth etc). Closes #53. Thanks @rintcius! (Ayush Gupta)

 * refer to jquery-1.8.0.min.js because jquery-1.8.0.js is not available in lib (also added .idea to .gitignore) (Rintcius Blok)

 * closes #45 (Ayush Gupta)

 * closes #46 (Ayush Gupta)

 * Updated readme with a section on SwaggerUi and its instantiation (Ayush Gupta)

 * closes #38 closes #37 (Ayush Gupta)

 * load logo_small.png and throbber.gif from images/ directory (Thomas Taschauer)

 * Fixing typo (Stephen McKamey)

 * removed dist folder (Tony Tam)

 * updated to point to downloads (Tony Tam)

 * allow html in summary, notes and description (Rintcius Blok)

 * fix build (Rintcius Blok)

 * re-enabled notes (Tony Tam)

 * updated readme with info on supportHeaderParams (Ayush Gupta)

 * updated readme, escaping underscore (Ayush Gupta)

 * Support for changing api_key parameter name. Closes #36 (Ayush Gupta)

 * added sublime project file (Ayush Gupta)

 * Calling Backbone.history.start later (Ayush Gupta)

 * updated readme (Ayush Gupta)

 * support for non GET methods. Closes #15 (Ayush Gupta)

 * closes #34 (Ayush Gupta)

 * proper encoding of query params (Ayush Gupta)

 * Calling load after instantiation of SwaggerUI (Ayush Gupta)

 * closes #32 (Ayush Gupta)

 * added pre-built distro (Tony Tam)

 * updated key (Tony Tam)

 * updated to v2 (Tony Tam)


2012-06-21, Version 1.0.1
=========================

 * added ignore of baseUrl if not defined or valid (Tony Tam)

 * Corrected bug where top level (only one initial '/') api paths get no name. (Aaron McCall)

 * Rebuilt using 'middleman build' (Hiram Chirino)

 * Simplify how the name of the resource is constructed so that it can handle resources nested multiple directory levels in. (Hiram Chirino)

 * Support a relative url path to the service. (Hiram Chirino)

 * Make swagger-ui compatible with non-GET requests (Albert Casademont)

 * Added development instructions to the README (zeke)

 * using basePath from the apis (Ayush Gupta)

 * using different basePath variants to get API Listing (Ayush Gupta)

 * Infer root resource name from baseUrl. (zeke)

 * Updated sample discovery URL. (zeke)

 * new build (zeke)

 * Support resource and discovery URLs with or without .json extension (zeke)

 * small templating change (zeke)

 * Removed empty CSS rule (zeke)

 * Fixed conflicts (bpinkney)

 * updated urls (Tony Tam)

 * Updated UI to handle object structure for list allowed values (rpidikiti)


2011-10-11, Version 1.0
=======================

 * First release!
