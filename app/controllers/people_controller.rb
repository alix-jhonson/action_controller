class PeopleController < ApplicationController
  def create
    Person.create(params[:person])
  end

  def update
    person = current_account.people.find(params[:id])
    person.update!(person_params)
    redirect_to person
  end
   private
  def person_params
      params.require(:person).permit(:name, :age)
      params.permit(:id)
      params.permit(id: [])
      params.require(:log_entry).permit!
    end
end
