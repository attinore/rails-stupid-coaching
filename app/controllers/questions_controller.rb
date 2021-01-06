class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @search = params[:answer]
    @answer =
      if @search.include? '?'
        'Silly question, get dressed and go to work!'
      elsif @search == 'I am going to work'
        'Great!'
      else
        'I don\'t care, get dressed and go to work!'
      end
  end
end
