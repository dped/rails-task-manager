class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # read all tasks, plural
  def index
    @tasks = Task.all
  end

  # read one task, singular
  def show
  end

  # create a new task
  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to tasks_path
  end

  def edit
  end

  # update a task
  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # delete a task
  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  # for security

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
