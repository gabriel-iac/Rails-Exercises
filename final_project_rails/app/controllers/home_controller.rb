class HomeController < ApplicationController
  before_filter :run_imdb, only: [:index] 

  def index
    @users = User.all
    @user = current_user
    @film = run_imdb.title("deadpool")
  end

  private

  def run_imdb
    @test = Imdb.new("deadpool")
  end
end
