require 'date'

module Helper
  private

  def return_date(input)
    if input
      day, month, year = input.split('.')
      Date.new(year.to_i, month.to_i, day.to_i)
    end
  end
end
