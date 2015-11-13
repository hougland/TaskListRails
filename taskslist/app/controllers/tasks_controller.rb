class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
    render '/tasks/form.html.erb'
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def create
    Task.create(task_params[:task])
    redirect_to '/tasks/'
  end

  def destroy
    Task.destroy(params["id"])
    redirect_to '/tasks/'
  end

  def complete
    task = Task.find(params[:id])
    task.done_date = Time.now
    task.save
    redirect_to '/tasks/'
  end

  def edit
    @task = Task.find(params[:id])
    @edit = true
    render '/tasks/form'
  end

  def update
    update_name = task_params[:task][:name]
    update_desc = task_params[:task][:desc]
    task = Task.find(params[:id])
    @task = task.update(name: update_name, description: update_desc)

    render '/tasks/form'

  end

  private
  def task_params
    params.permit(task:[:name, :description])
  end
end
