require_relative 'todolist'

module ToDo
  class App
    def run
      @todo = ToDo::ToDoList.new

      loop do
        puts 'Co chesz zrobić?'
        case gets.chomp
        when 'list'
          @todo.list
        when 'add'
          @todo.add
        when 'get'
          @todo.get
        when 'update'
          @todo.update
        when 'remove'
          @todo.remove
        when 'exit'
          exit
        end
      end
    end
  end
end

ToDo::App.new.run
