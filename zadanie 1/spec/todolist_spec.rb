require_relative '../lib/todolist'
require_relative '../lib/task'
require 'stringio'

RSpec.describe ToDo::ToDoList do
  # before(:each) do
  #   @todolist = ToDo::ToDoList.new
  # end
  #
  # it 'creates an empty array' do
  #   expect(@todolist.todo).to eq []
  # end
  #
  # context 'adding an element' do
  #   it 'adds Task element to the list' do
  #     to_add = StringIO.new('task').gets.chomp
  #     title, status = StringIO.new('title_1, status_1').gets.chomp.split(', ')
  #     expect(to_add).to be == 'task'
  #     @todolist.add
  #     expect(@todolist.todo).to include('title_1')
  #   end
  #
  #   it 'adds Event to the list' do
  #   end
  #
  #   it 'doesn\'t add any other inputs to the list' do
  #   end
  # end
  #
  # it 'shows the whole list' do
  #
  # end
  #
  # it 'gets the particular element' do
  #
  # end
  #
  # it 'updates the particular element' do
  #
  # end
  #
  # it 'removes the particular element' do
  #
  # end
end
