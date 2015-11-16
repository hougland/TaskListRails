class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def show_tasks
    @person = Person.find(params[:id])
  end
end
