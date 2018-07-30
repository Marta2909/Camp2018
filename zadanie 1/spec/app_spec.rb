require_relative '../lib/app'

RSpec.describe ToDo::App do
  let(:app) { ToDo::App.new { include ToDo::Debugger } }

  describe 'run' do
    before(:each) do
      @mock_todo = ToDo::ToDoList.new
    end
    context 'list' do
      it 'shows all tasks' do
        expect(app.run('list')).to receive(:list).to_stdout
      end
    end
    before
  end
end
