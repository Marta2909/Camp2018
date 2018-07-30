module ToDo
  module Debugger
    def bang!
      puts 'Bang ' + Random.rand(99).to_s + '!'
    end
  end
end
