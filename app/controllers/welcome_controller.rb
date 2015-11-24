class WelcomeController < ApplicationController
  def index
    @people = Person.all
    # @person = Person.find(params[:id])
  end
end
