class TasksController < ApplicationController
  before_action :get_task, except: [:index, :new, :create]

  def index
    @tasks = Task.all
  end

  def show # needs an [:id]
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create(task_params)

    redirect_to task_path(task.id)
  end

  def edit
  end

  def update # needs an [:id]
    @task.update(task_params)
    redirect_to @task
  end

  def destroy # needs an [:id]
    @task.destroy
    redirect_to tasks_path
  end

  private

  def get_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end

end
