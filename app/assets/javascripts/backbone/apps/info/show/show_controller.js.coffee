@Todo.module "InfoApp.Show", (Show, App, Backbone, Marionette, $, _) ->

	# Controller must be public object, so info_app.js.coffee can call it
	Show.Controller = 
		showInfo: ->
			infoView = @getInfoView()
			App.infoRegion.show infoView

		# references show_view.js.coffee
		getInfoView: ->
			new Show.Info