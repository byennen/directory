require 'spec_helper'

describe PagesController do

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'media_kit'" do
    it "returns http success" do
      get 'media_kit'
      response.should be_success
    end
  end

  describe "GET 'associations'" do
    it "returns http success" do
      get 'associations'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

end
