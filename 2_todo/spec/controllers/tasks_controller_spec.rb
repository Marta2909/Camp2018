require 'rails_helper'

RSpec.describe TasksController, type: :controller do

  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_success
    end
    it 'renders index template' do
      get :index
      expect(response).to render_template(:index)
    end
    it 'shows all tasks in the list' do
      task1 = Task.create!(subject: 'aaa')
      task2 = Task.create!(subject: 'bbb')
      Task.create!(subject: 'ccc')
      get :index
      expect(assigns(:tasks)).to eq [task2, task1]
      expect(assigns(:actual_task).subject).to eq 'ccc'
    end
  end

  describe 'GET new' do
    it 'assigns @task with the new empty task object' do
      get :new
      expect(assigns(:task)).not_to be_nil
      expect(assigns(:task).subject).to be_nil
    end

    it 'renders the new template' do
      get :new
      expect(response).to render_template('new')
    end
  end

  describe 'POST create' do
    it 'assigns the @task' do
      post :create, params: { task: { subject: 'task1' } }
      expect(assigns(:task)).not_to be_nil
      expect(assigns(:task).subject).to eq 'task1'
      expect(assigns(:task).status).to eq 1
    end

    context 'with valid data' do
      before(:each) do
        post :create, params: { task: { subject: 'task1' } }
      end

      it 'saves the @task' do
        expect(assigns(:task).save).to be true
      end

      it 'redirectes user to the root_path' do
        expect(response).to redirect_to(tasks_path)
      end

      it 'changes old tasks status to 2' do
        post :create, params: { task: { subject: 'task2' } }
        expect(Task.find(Task.count-1).status).to eq 2
        expect(Task.last.status).to eq 1
      end
    end

    context 'with invalid data' do
      before(:each) do
        post :create, params: { task: { subject: nil } }
      end

      it 'doesn\'t save the @task' do
        expect(assigns(:task).save).to be false
      end

      it 'renders the new template' do
        expect(response).to render_template('new')
      end
    end
  end
end
