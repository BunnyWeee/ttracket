class RacketsController < ApplicationController

  def index
    @rackets = Racket.all
  end

end
