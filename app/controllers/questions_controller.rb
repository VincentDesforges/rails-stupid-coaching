class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = check_question_type(@question)
  end

  private

  def check_question_type(question_string)
    if question_string == "I am going to work"
      return "Great!"
    elsif question_string[-1] == "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
