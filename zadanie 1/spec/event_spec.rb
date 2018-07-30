require_relative '../lib/event'
require 'date'

RSpec.describe ToDo::Event do

  before(:each) do
    @event = ToDo::Event.new('title_1', 'status_1', '29.09.2018')
  end
  it 'creates new Event object' do
    expect(@event.title).to eq 'title_1'
    expect(@event.status).to eq 'status_1'
    expect(@event.date).to eq '29.09.2018'
  end

  it 'allows to change the title and status value of task' do
    @event.title = 'title_2'
    @event.status = 'status_2'
    @event.date = '30.09.2018'
    expect(@event.title).to eq 'title_2'
    expect(@event.status).to eq 'status_2'
    expect(@event.date).to eq '30.09.2018'
  end

  it 'allows to set element through Array syntax' do
    @event[2] = '04.04.2000'
    @event[1] = 'status_2'
    @event[0] = 'title_2'
    expect(@event.date).to eq Date.new(2000,4,4)
    expect(@event.status).to eq 'status_2'
    expect(@event.title).to eq 'title_2'
  end

  it 'allows to get element through Array syntax' do
    expect(@event[0]).to eq 'title_1'
    expect(@event[1]).to eq 'status_1'
    expect(@event[2]).to eq '29.09.2018'
  end
end
