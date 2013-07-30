class HomeController < ApplicationController
  def index
    @exercises = Exercise.all
  end
end
