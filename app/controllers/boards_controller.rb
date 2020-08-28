class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(create_params)
    if @board.save
      redirect_to boards_path, notice: 'Board created'
    else
      render :new
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy!
    redirect_to boards_path, notice: 'Board deleyed'
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    if @board.update(title: params[:board][:title], text: params[:board][:text])
      redirect_to boards_path, notice: 'Board updated!'
    else
      render :edit
    end
  end

  private

  def create_params
    params.require(:board).permit(:title, :text)
  end
end