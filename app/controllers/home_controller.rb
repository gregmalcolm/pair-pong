class HomeController < ApplicationController
  def index
  end

  def oldindex
    @exercises = Exercise.all
  end
end
