class ListsController < ApplicationController
    before_action :set_board, only: [:new, :create, :edit, :update, :destroy]
    before_action :set_list, only: [:edit, :update, :destroy] 

    def new
        @list = @board.lists.new
    end

    def create
        @list = @board.lists.create(list_params)
        if @list.save
            redirect_to board_path(@board), notice: 'List created'
        else
            render :new
        end
    end

    def edit
    end

    def update
          if @list.update(list_params)
            redirect_to boards_path(@board), notice: 'List name changed!'
          else
            render :edit
          end
    end

    def destroy
        if @list.destroy
            redirect_to boards_path(@board), notice: 'List deleyed'
        else
            render boards_path(@board), notice: 'Sth went wrong, list is still alive'
        end
    end

    private

    def set_board
        @board = Board.find(params[:board_id])
    end

    def set_list
        @list = @board.lists.find(params[:id])
    end

    def list_params
        params.require(:list).permit(:name)
    end

end