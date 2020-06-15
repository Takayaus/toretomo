ActiveAdmin.register Gym do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
    permit_params :name, :title, :content, :number, :address, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :title, :content, :number, :address]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
      form do |f|
      f.inputs "Gyms" do
        f.input :name
        f.input :title
        f.input :content
        f.input :number
        f.input :address
        f.input :image, :as => :file
      end
      f.actions
    end
    
end
