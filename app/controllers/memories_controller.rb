class MemoriesController < ApplicationController
  def new
    @person = Person.find(params[:person_id])
    @memory = Memory.new
  end

  def create
    Memory.create(memory_params)
    redirect_to person_memory_path(params[:person_id], [:id])
  end

  def show
    @memory = Memory.all
    @person = Person.find(params[:person_id])
  end

  def edit
    @memory = Memory.find(params[:id])
    @person = Person.find(params[:person_id])
  end

  def update
    memory = Memory.find(params[:id])
    memory.update_attributes(memory_params)
    redirect_to person_memory_path(params[:person_id], [:id])
  end

################ PRIVADO! #################
 def memory_params
   params.require(:memory).permit(:memory, :author, :person_id)
 end


end
