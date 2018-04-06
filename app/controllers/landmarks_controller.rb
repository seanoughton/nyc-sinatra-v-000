class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks/new' do
    #@new_landmark = Figure.create(params[:landmark])
    #@new_landmark.save
  end


end
