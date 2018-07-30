require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'with valid input' do
    it 'saves only tasks with subject' do
      task = Task.new(subject: 'task')
      expect(task.save).to be true
    end
  end

  context 'with invalid data' do
    it 'doesn\'t save tasks without subject' do
      task = Task.new
      expect(task.save).to be false
    end
  end
end
