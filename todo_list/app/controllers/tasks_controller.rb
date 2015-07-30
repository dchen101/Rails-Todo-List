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

  def edit
    @task = Task.find(params[:id])
    # @task.update_attributes(description: params[:task][:description])
  end

  def update
    task=Task.find(params[:id])
    task.update_attributes(description: params[:task][:description])
    redirect_to tasks_path
  end

  def destroy
    task=Task.find(params[:id])
    task.destroy
    redirect_to tasks_path
  end

end
