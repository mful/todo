@Todo.module "TodosApp.List", (List, App, Backbone, Marionette, $, _) ->

	class List.Todo extends App.Views.ItemView
		template: "todos/list/templates/_todo"
		tagName: "li"

		triggers: 
			'dblclick label': 	'edit:todo'
			#'keypress .edit': 	'update:todo'
			#'blur .edit': 			'finish:edit'
			#'click .toggle':		'toggle:completed'
			#'click .destroy': 	'clear:todo'

	class List.Todos extends App.Views.CompositeView
		template: "todos/list/templates/_todos"
		itemView: List.Todo
		itemViewContainer: "ul"