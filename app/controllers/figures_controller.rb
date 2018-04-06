class FiguresController < ApplicationController

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures/new' do
    @new_figure = Figure.create(params[:figure])
    @new_title = Title.create(params[:title])
    @new_figure.titles << @new_title
    @new_landmark = Landmark.create(params[:landmark])
    @new_figure.landmarks << @new_landmark
    @new_figure.save
  end

  get '/figures' do
    erb :'figures/index'
  end

  get "/figures/:id" do
    @figure = Figure.find(params[:id])
    erb :'figures/show'
  end

  get "/figures/:id/edit" do
    @figure = Figure.find(params[:id])
    erb :'figures/edit'
  end

  patch '/figures/:id' do
    @figure = Figure.find(params[:id])

    redirect to "/figures/#{@figure.id}"
  end

end
