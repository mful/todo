@Todo.module "InfoApp", (InfoApp, App, Backbone, Marionette, $, _) ->
	@startWithParent = false

	API = 
		showInfo: ->
			InfoApp.Show.Controller.showInfo()

	InfoApp.on "start", ->
		API.showInfo()
