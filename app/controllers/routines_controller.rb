require 'pry'

class RoutinesController < ApplicationController

  get '/routines' do
    @routines = Routine.all
    erb :'/routines/index'
  end

  get '/routines/new' do
    erb :'/routines/new'
  end

  post '/routines' do
    @routine = Routine.create(habit: params[:routine][:habit])
    redirect :'/routines'
  end

  get '/routines/:id' do
    @routine = Routine.find_by_id(params[:id])
    erb :'/routines/show'
  end

  get '/routines/:id/edit' do
    @routine = Routine.find_by_id(params[:id])
    erb :'/routines/edit'
  end

  patch '/routines/:id' do
    @routine = Routine.find_by_id(params[:id])
    @routine.update(params[:routine])
    redirect "/routines/#{@routine.id}"
  end


end
