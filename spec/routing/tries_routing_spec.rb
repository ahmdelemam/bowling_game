require "rails_helper"

RSpec.describe TriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tries").to route_to("tries#index")
    end

    it "routes to #new" do
      expect(:get => "/tries/new").to route_to("tries#new")
    end

    it "routes to #show" do
      expect(:get => "/tries/1").to route_to("tries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tries/1/edit").to route_to("tries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tries").to route_to("tries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tries/1").to route_to("tries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tries/1").to route_to("tries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tries/1").to route_to("tries#destroy", :id => "1")
    end

  end
end
