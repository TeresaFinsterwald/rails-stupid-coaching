class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    if @questions == "I am going to work"
      @answer = 'Great!'
      return @answer
    elsif @questions.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
      return @answer
    else
      @answer = "I don't care, get dressed and go to work!"
      return @answer
    end
  end
end
