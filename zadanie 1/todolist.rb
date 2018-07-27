require_relative 'event'
require_relative 'task'

module ToDo
  class ToDoList
    include Helper

    attr_accessor :todo

    def initialize
      @todo = []
    end

    def add
      puts 'chcesz dodać task czy event?'
      to_add = gets.chomp until %w[task event].include?(to_add)
      puts 'podaj szczegóły oddzielając przecinkami (tytuł, status, date)'
      title, status, date = gets.chomp.split(', ')
      new_element = to_add == 'task' ? ToDo::Task.new(title, status) : ToDo::Event.new(title, status, return_date(date))
      @todo << new_element
    end

    def list
      puts @todo.inspect
    end

    def get(position = nil)
      puts 'który element pokazać?' unless position
      position ||= gets.chomp.to_i until gets.chomp.to_i < @todo.length
      to_print = @todo[position].class.to_s + ': title: ' + @todo[position].title + ', status: ' + @todo[position].status
      case @todo[position]
      when Task
        puts to_print
      when Event
        puts to_print + ', date: ' + @todo[position].date.to_s
      end
      @todo[position]
    end

    def update
      puts 'podaj pozycję elementu, pozycję w tym elemencie do zaktualizowania i nową wartość, odzielając przecinkiem'
      element_position, position, value = gets.chomp.split(', ')
      @todo[element_position.to_i][position.to_i] = value
    end

    def remove
      puts 'który element usunąć?'
      position = gets.chomp.to_i
      @todo.delete_at(position)
    end
  end
end
