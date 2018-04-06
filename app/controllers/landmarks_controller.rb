class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks/new' do
    binding.pry
    @new_landmark = Landmark.create(params[:landmark])
    @new_landmark.save
  end


end
