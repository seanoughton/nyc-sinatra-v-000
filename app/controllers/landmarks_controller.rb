class LandmarksController < ApplicationController


  get '/landmarks' do
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks/new' do
    @new_landmark = Landmark.create(params[:landmark])
    @new_landmark.save
  end


end
