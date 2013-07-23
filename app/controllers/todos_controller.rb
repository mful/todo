class TodosController < ApplicationController
	respond_to :json

	def index
		@todos = Todo.all
	end
end