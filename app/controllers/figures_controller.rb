class FiguresController < ApplicationController

  get '/figures/new' do
    erb :'/figures/new'
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

  post '/figures/new' do
    @new_figure = Figure.create(params[:figure])

    if !params[:title][:name].empty?
      @new_figure.titles << Title.create(params[:title])
    end

    if !params[:landmark][:name].empty?
      @new_figure.landmarks << Landmark.create(params[:landmark])
    end
    @new_figure.save
    redirect to "/figures/#{@figure.id}"
  end

  patch '/figures/:id' do
    @figure = Figure.find(params[:id])
    @figure.update(params[:figure])
    @figure.landmarks << Landmark.find_or_create_by(params[:landmark])
    @figure.save
    redirect to "/figures/#{@figure.id}"
  end

end
