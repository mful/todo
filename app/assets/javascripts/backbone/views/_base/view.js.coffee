@Todo.module "Views", (Views, App, Backbone, Marionette, $, _) ->

	_.extend Marionette.View::,

		templateHelpers: ->

			justATest:
				testable = "yay!"