class PeopleController < ApplicationController

      params.permit(:name, { emails: [] },
              friends: [ :name,
                         { family: [ :name ], hobbies: [] }])

    params.fetch(:blog, {}).permit(:title, :author)

    params.require(:author).permit(:name, books_attributes: [:title, :id, :_destroy])
   params.require(:book).permit(:title, chapters_attributes: [:title])

   def product_params
  params.require(:product).permit(:name, data: params[:product][:data].try(:keys))
end

end
