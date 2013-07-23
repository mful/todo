@Todo.module "TodosApp.List", (List, App, Backbone, Marionette, $, _) ->

	List.Controller = 
		listTodos: ->
			todos = App.request "todo:entities"

			@todos = @getTodosView todos

			App.mainRegion.show @todos

			@todos.on "itemview:edit:todo", (args) ->
				args.$el.addClass('editing')
				@$('.edit').focus()

		getTodosView: (todos) ->
			new List.Todos
				collection: todos