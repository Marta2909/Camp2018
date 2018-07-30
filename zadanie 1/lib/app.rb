require_relative 'todolist'
require_relative 'debugger'

module ToDo
  class App
    include Debugger
    def run(action)
      @todo = ToDo::ToDoList.new
      bang!

      loop do
        case action
        when 'list'
          @todo.list
          break
        when 'add'
          @todo.add
          break
        when 'get'
          @todo.get
          break
        when 'update'
          @todo.update
          break
        when 'remove'
          @todo.remove
          break
        when 'exit'
          exit
        end
      end
    end
  end
end

ToDo::App.new.run('list')
