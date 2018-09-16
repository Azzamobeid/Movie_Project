ActiveAdmin.register Movie do
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
      f.input :title, label: "Title"
      f.input :year
      f.input :rating
      f.input :crew_ids, as: :check_boxes, collection: Crew.all
    end
    f.actions
  end

  # params whitelisting
  permit_params :title,:year, :rating, crew_ids: []

end
