ActiveAdmin.register Crew do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form html: { multipart: true } do |f|
    f.inputs do
      f.input :name
      f.input :role
      f.input :movie_ids, as: :check_boxes, collection: Movie.all
    end
    f.actions
  end

  # params whitelisting
  permit_params :name, :role, movie_ids: []

end
