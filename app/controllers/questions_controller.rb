class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coach = "- your coach"
    @you = "- you"
    @question = params[:question]
    @answer = ''
    if @question.split[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = ' Great !'
    elsif @question == 'hello there'
      @answer = 'GENERAL KENOBI !'
    elsif @question == ""
      @answer = "it's empty dummy"
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
