class UsersController < ApplicationController
  def show
    @exercises = Exercise.all
  end
end
