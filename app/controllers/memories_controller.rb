class MemoriesController < ApplicationController
  def new
    @people = Person.all
    @person = Person.find(params[:person_id])
    @memory = Memory.new
  end

  def create
    Memory.create(memory_params)
    redirect_to person_memory_path(params[:person_id], [:id])
  end

  def show
    @memory = Memory.all
  end

################ PRIVADO! #################
 def memory_params
   params.require(:memory).permit(:memory, :author, :person_id)
 end


end
