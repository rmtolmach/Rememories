class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    Person.create(person_params)
    redirect_to root_path
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
