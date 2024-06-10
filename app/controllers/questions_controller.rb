class QuestionsController < ApplicationController
  def ask ; end

  def answer
    @question = params[:question]
    if @question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work now!'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
