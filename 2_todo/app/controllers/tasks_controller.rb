class TasksController < ApplicationController
  def index
    @tasks = Task.any? ? Task.where(id: [0...Task.last.id]).order('created_at DESC') : Task.all
    @actual_task = Task.last
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.status = 1
    if @task.save
      flash[:notice] = 'pomyślnie dodano'
      Task.first(Task.count-1).each do |task|
        task.status = 2
        task.save
      end
      redirect_to tasks_path
    else
      flash[:notice] = 'spróbuj jeszcze raz'
      render action: 'new'
    end
  end

  private

  def task_params
    params.require(:task).permit(:subject, :status)
  end
end
