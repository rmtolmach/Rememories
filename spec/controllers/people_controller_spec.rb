require 'rails_helper'

RSpec.describe PeopleController, type: :controller do
  let(:person_params) do
    {
      person: {
        name: "Joey"
      },
      person_id: 1
    }
  end

  # let(:person) do
  #   Person.create(name: "Brittany")
  # end

  describe "GET 'new'" do
    it "renders the new template" do
      get :new
      expect(subject).to render_template :new
    end
  end

  describe "POST 'create'" do
    it "successfully creates a person" do
      expect(Person.all.length). to eq 0
      post :create, person_params
      expect(Person.all.length).to eq 1
    end
    it "redirects to the root path" do
      post :create, person_params
      expect(subject).to redirect_to root_path
    end
  end

  describe "DELETE 'destroy'" do
    before :each do
      post :create, person_params
    end
    it "redirects to the root path" do
      delete :destroy, id: 1
      expect(subject).to redirect_to root_path
    end
  end
end
