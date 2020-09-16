class ListsController < ApplicationController
    before_action :find_board_list, only: [:edit, :update, :destroy] 

    def new
        @board = Board.find(params[:board_id])
        @list = @board.lists.new
    end

    def create
        @board = Board.find(params[:board_id])
        @list = @board.lists.create(create_params)
        if @list.save
            redirect_to board_path(@board), notice: 'List created'
        else
            render :new
        end
    end

    def edit
    end

    def update
          if @list.update(name: params[:list][:name])
            redirect_to boards_path(@board), notice: 'List name changed!'
          else
            render :edit
          end
    end

    def destroy
        @list.destroy!
        redirect_to boards_path(@board), notice: 'List deleyed'
    end

    private

    def find_board_list
        @board = Board.find(params[:board_id])
        @list = @board.lists.find_by(params[:id])
    end

    def create_params
        params.require(:list).permit(:name)
    end


end