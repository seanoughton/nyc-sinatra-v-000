class FiguresController < ApplicationController

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures/new' do
    @new_figure = Figure.create(params[:figure])
    @new_title = Title.create(params[:title])
    @new_figure.titles << @new_title
    @new_landmark = Title.create(params[:landmark])
    @new_figure.landmarks << @new_landmark
    @new_figure.save
  end

end
