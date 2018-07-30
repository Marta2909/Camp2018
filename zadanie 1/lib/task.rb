require_relative 'to_do_list_element'

module ToDo
  class Task < ToDo::ToDoListElement
    attr_accessor :title, :status

    def initialize(title, status)
      @title = title
      @status = status
    end
  end
end
