require_relative '../lib/debugger'

RSpec.describe ToDo::Debugger do
  let(:mock_class) { Class.new { include ToDo::Debugger } }
  let(:mock_object) { mock_class.new }

  before do
    srand(99)
  end

  it 'prints Bang with number from 0 to 99' do
    mock_object.bang!
    expect{ mock_object.bang! }.to output("Bang 35!\n").to_stdout
  end
end
