@Todo.module "InfoApp.Show", (Show, App, Backbone, Marionette, $, _) ->

	class Show.Info extends Marionette.ItemView
		# this JST[] syntax requires override of Marionette's render function
		# override is found in backbone/config/marionette/renderer.js.coffee
		template: "info/show/templates/show_info"
		tagName: 'p'