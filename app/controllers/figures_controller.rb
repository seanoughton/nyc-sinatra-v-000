class FiguresController < ApplicationController

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures/new' do
    @new_figure = Figure.create(params[:figure])
    binding.pry
    @new_figure.save
  end

end
