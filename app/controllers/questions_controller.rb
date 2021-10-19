class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @message = params[:question]
    if @message.downcase == "I am going to work right now!"
      @response = "Great!"
    elsif @message.end_with?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
