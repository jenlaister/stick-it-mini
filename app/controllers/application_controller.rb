require './config/environment'

class ApplicationController < Sinatra::Base

set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    "Form a Habit Today!"
  end


end
