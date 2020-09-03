class ListsController < ApplicationController

    def new
        @list = List.new
    end

    def create
        @list = List.new
        @board = Board.find(params:[board-id])
    end

    def show
    end
end