@Todo.module "Entities", (Entities, App, Backbone, Marrionette, $, _) ->

	class Entities.Todo extends Entities.Model

	class Entities.TodosCollection extends Entities.Collection
		model: Entities.Todo
		# js-routes gem auto-creates this helper
		url: -> Routes.todos_path()

	API =
		getTodoEntities: ->
			todos = new Entities.TodosCollection
			todos.fetch()
			todos

	App.reqres.addHandler "todo:entities", ->
		API.getTodoEntities()