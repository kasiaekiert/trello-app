class TicketsController < ApplicationController
    def new
        @board = Board.find(params[:board_id])
        @list = @board.lists.find(params[:id])
        @ticket = @board.@list.ticket.new
    end

    def create
    end
end