require_relative '../lib/to_do_list_element'

RSpec.describe ToDo::ToDoListElement do
  before(:each) do
    @task = ToDo::Task.new('title_1', 'status_1')
  end

  it 'allows to get element through Array syntax' do
    expect(@task[0]).to eq 'title_1'
    expect(@task[1]).to eq 'status_1'
  end

  it 'allows to set element through Array syntax' do
    @task[0] = 'title_2'
    @task[1] = 'status_2'
    expect(@task.title).to eq 'title_2'
    expect(@task.status).to eq 'status_2'
  end
end
