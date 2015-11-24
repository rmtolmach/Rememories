class MemoriesController < ApplicationController
  def new
    @people = Person.all
    @person = Person.find(params[:person_id])
    @memory = Memory.new
  end
end
