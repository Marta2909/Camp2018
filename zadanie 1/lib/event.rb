require_relative 'to_do_list_element'
require_relative 'helper'

module ToDo
  class Event < ToDo::ToDoListElement
    include Helper

    attr_accessor :title, :status, :date

    def initialize(title, status, date)
      @title = title
      @status = status
      @date = date
    end

    def []=(number, value)
      number == 2 ? @date = return_date(value) : super
    end

    def [](number)
      number == 2 ? @date : super
    end
  end
end
