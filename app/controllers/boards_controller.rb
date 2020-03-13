class BoardsController < ApplicationController
  def new
  @board = Board.new
  end

  def index
  @boards = Board.all
  end
end
