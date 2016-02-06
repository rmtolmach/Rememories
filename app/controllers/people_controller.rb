class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:success] = "This person has been added"
      redirect_to root_path
    else
      flash[:warning] = "The person was not added"
      render 'new'
    end
  end

  def destroy
    Person.destroy(params[:id])
    redirect_to root_path
  end

###########PRIVADO###############
  private

  def person_params
    params.require(:person).permit(:name, :id)
  end

end
