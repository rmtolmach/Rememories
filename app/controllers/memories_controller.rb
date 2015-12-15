class MemoriesController < ApplicationController

  before_action :find_person, only:[:index, :new, :show, :edit]
  before_action :find_memory, only:[:update, :edit]

  def index
    @memory = Memory.all
    render :show
  end

  def new
    @memory = Memory.new
  end

  def create
    Memory.create(memory_params)
    redirect_to person_memory_path(params[:person_id], [:id])
  end

  def show
    @memory = Memory.all
  end

  def edit
  end

  def update
    @memory.update_attributes(memory_params)
    redirect_to person_memory_path(params[:person_id], [:id])
  end

  def destroy
    Memory.destroy(params[:id])
    redirect_to person_memory_path(params[:person_id], [:id])
  end

  def find_person
    @person = Person.find(params[:person_id])
  end

  def find_memory
    @memory = Memory.find(params[:id])
  end

################ PRIVADO! #################
private

 def memory_params
   params.require(:memory).permit(:description, :author, :person_id)
 end


end
