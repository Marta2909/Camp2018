require_relative '../lib/task'

RSpec.describe ToDo::Task do
  before(:each) do
    @task = ToDo::Task.new('title_1', 'status_1')
  end

  it 'creates new Task object' do
    expect(@task.title).to eq 'title_1'
    expect(@task.status).to eq 'status_1'
  end

  it 'allows to change the title and status value of task' do
    @task.title = 'title_2'
    @task.status = 'status_2'
    expect(@task.title).to eq 'title_2'
    expect(@task.status).to eq 'status_2'
  end
end
