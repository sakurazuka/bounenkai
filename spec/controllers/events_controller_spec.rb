require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe EventsController do

  # This should return the minimal set of attributes required to create a valid
  # Event. As you add validations to Event, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { name: 'test_name', detail: 'test_detail', password: '0000' } }
  let(:board_valid_attributes) { { name: 'test_name', tweet: 'test_tweet' } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EventsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET show" do
    it "assigns the requested event as @event" do
      event = Event.create! valid_attributes
      get :show, {:id => event.to_param}, valid_session
      assigns(:event).should eq(event)
    end
  end

  describe "GET new" do
    it "assigns a new event as @event" do
      get :new, {}, valid_session
      assigns(:event).should be_a_new(Event)
    end
  end

  describe "GET edit" do
    it "assigns the requested event as @event" do
      event = Event.create! valid_attributes
      get :edit, {:id => event.to_param}, valid_session
      assigns(:event).should eq(event)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Event" do
        expect {
          post :create, {:event => valid_attributes}, valid_session
        }.to change(Event, :count).by(1)
      end

      it "assigns a newly created event as @event" do
        post :create, {:event => valid_attributes}, valid_session
        assigns(:event).should be_a(Event)
        assigns(:event).should be_persisted
      end

      it "redirects to the created event" do
        post :create, {:event => valid_attributes}, valid_session
        response.should redirect_to(Event.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved event as @event" do
        # Trigger the behavior that occurs when invalid params are submitted
        Event.any_instance.stub(:save).and_return(false)
        post :create, {:event => { password: 'invalid' }}, valid_session
        assigns(:event).should be_a_new(Event)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Event.any_instance.stub(:save).and_return(false)
        post :create, {:event => { password: 'invalid' }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested event" do
        event = Event.create! valid_attributes
        # Assuming there are no other events in the database, this
        # specifies that the Event created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Event.any_instance.should_receive(:update).with({ "name" => "params" })
        put :update, {:id => event.to_param, :event => { "name" => "params" }}, valid_session
      end

      it "assigns the requested event as @event" do
        event = Event.create! valid_attributes
        put :update, {:id => event.to_param, :event => valid_attributes}, valid_session
        assigns(:event).should eq(event)
      end

      it "redirects to the event" do
        event = Event.create! valid_attributes
        put :update, {:id => event.to_param, :event => valid_attributes}, valid_session
        response.should redirect_to(event)
      end
    end

    describe "with invalid params" do
      it "assigns the event as @event" do
        event = Event.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Event.any_instance.stub(:save).and_return(false)
        put :update, {:id => event.to_param, :event => { password: 'invalid' }}, valid_session
        assigns(:event).should eq(event)
      end

      it "re-renders the 'edit' template" do
        event = Event.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Event.any_instance.stub(:save).and_return(false)
        put :update, {:id => event.to_param, :event => { password: 'invalid' }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested event" do
      event = Event.create! valid_attributes
      expect {
        delete :destroy, {:id => event.to_param}, valid_session
      }.to change(Event, :count).by(-1)
    end

    it "redirects to the events list" do
      event = Event.create! valid_attributes
      delete :destroy, {:id => event.to_param}, valid_session
      response.should redirect_to(top_index_url)
    end
  end

  describe "POST bulk_create" do
    describe "with valid params" do
      it "creates a new Board" do
        event = Event.create! valid_attributes
        expect {
          post :bulk_create, {:id => event.to_param, :board => board_valid_attributes}, valid_session
        }.to change(Board, :count).by(1)
      end

      it "assigns a newly created board as @board" do
        event = Event.create! valid_attributes
        post :bulk_create, {:id => event.to_param, :board => board_valid_attributes}, valid_session
        assigns(:board).should be_a(Board)
        assigns(:board).should be_persisted
      end

      it "redirects to the created board" do
        event = Event.create! valid_attributes
        post :bulk_create, {:id => event.to_param, :board => board_valid_attributes}, valid_session
        response.should redirect_to(Event.last)
      end
    end

    # describe "with invalid params" do
      # it "assigns a newly created but unsaved board as @board" do
        # event = Event.create! valid_attributes
        # # Trigger the behavior that occurs when invalid params are submitted
        # Board.any_instance.stub(:save).and_return(false)
        # post :bulk_create, {:id => event.to_param, :board => { password: 'invalid' }}, valid_session
        # assigns(:board).should be_a_new(Board)
      # end

      # it "re-renders the 'new' template" do
        # event = Event.create! valid_attributes
        # # Trigger the behavior that occurs when invalid params are submitted
        # Board.any_instance.stub(:save).and_return(false)
        # post :bulk_create, {:id => event.to_param, :board => { password: 'invalid' }}, valid_session
        # response.should render_template("new")
      # end
    # end
  end
end
