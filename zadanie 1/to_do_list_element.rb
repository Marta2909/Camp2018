module ToDo
  class ToDoListElement
    def [](number)
      case number
      when 0
        @title
      when 1
        @status
      end
    end

    def []=(number, value)
      case number
      when 0
        @title = value
      when 1
        @status = value
      end
    end
  end
end
