@Todo.module "TodosApp", (TodosApp, App, Backbone, Marionette, $, _) ->

	class TodosApp.Router extends Marionette.AppRouter

		appRoutes:
			"todos" : "listTodos"

	API = 
		listTodos: ->
			TodosApp.List.Controller.listTodos()

	App.addInitializer ->
		new TodosApp.Router
			controller: API