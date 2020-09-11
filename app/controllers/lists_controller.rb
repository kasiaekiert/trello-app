class ListsController < ApplicationController

    def new
        @board = Board.find(params[:board_id])
        @list = List.new
    end

    def create
        @board = Board.find(params[:board_id])
        @list = @board.lists.new
        if @list.save
            redirect_to board_path(@board), notice: 'List created'
        else
            render :new
        end
    end

    def edit
        @board = Board.find(params[:id])
        @list = @board.lists.find_by(params[:id])
    end

end