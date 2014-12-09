require 'rails_helper'

RSpec.describe QuestionsController, :type => :controller do
  describe "GET index" do
    before :each do
      Question.destroy_all
    end

    it "renders the index" do
      get :index
      expect(response).to render_template :index
    end

    it "loads all the questions" do
      question = Question.create!(title: "Title", content: "content")
      get :index
      expect(assigns(:questions)).to eq([question])
    end
  end

  describe "GET show" do
    before :each do
      Question.destroy_all
      Answer.destroy_all

      @question = Question.create!(title: "Title", content: "content")
      @answer = @question.answers.create!(title: "How to?", content: "Do some stuff")
    end

    it "renders the show" do
      get :show, {id: @question}
      expect(response).to render_template :show
    end

    it "loads all answers related to question" do
      get :show, {id: @question}
      expect(assigns(:answers)).to eq([@answer])
    end
  end
end
