class UsersController < ApplicationController
  
  get '/users' do
    @users = User.all
    erb :'/users/index'
  end

  get '/users/new' do
    erb :'/users/new'
  end

  post '/users' do
    @user = User.create(params[:name])
    redirect '/users'
  end

  get '/users/:id' do
    @user = User.find_by_id(params[:id])
    erb :'/users/show'
  end

  # get '/users/:id/edit' do
  #   @user = User.find_by_id(params[:id])
  #   erb :'/users/edit'
  # end

  # patch '/users/:id' do
  #   @user = User.find_by_id(params[:id])
  #   @user.update(params[:user])
  #   redirect "/users/#{@user.id}"
  # end


end
