class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(description: params[:task][:description], completed: false)
    redirect_to tasks_path
  end

  def completed
    task = Task.find(params[:task_id])
    task.update_attributes(completed: true)
    redirect_to tasks_path
  end

end
