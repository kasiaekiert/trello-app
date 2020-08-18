class BoardController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
  end

  def show
  end

  def edit
  end
end
