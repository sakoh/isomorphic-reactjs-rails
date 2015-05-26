require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  
  describe "GET index" do

  	it "gets posts" do
  	  post = Post.create
      get :index
      expect(assigns(:posts)).to eq([post])
  	end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

  end

end
