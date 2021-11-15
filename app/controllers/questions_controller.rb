class QuestionsController < ApplicationController
  def ask; end

  def answer
    question = params[:question]

    if question == 'I am going to work'
      @ask = 'Great!'
    elsif question.end_with?('?')
      @ask = 'Silly question, get dressed and go to work!'
    else
      question.empty?
      @ask = "I don't care, get dressed and go to work!"
    end
  end
end
