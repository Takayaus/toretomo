ActiveAdmin.register Trainer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :age, :number, :email, :title, :content, :profile, :image, :fee, trainer_categories_attributes: [:category_id, :_destroy, :id] 
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :age, :number, :email, :title, :content, :profile]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
    form do |f|
    f.inputs "Trainers" do
      f.input :name
      f.input :age
      f.input :number
      f.input :email
      f.input :title
      f.input :content
      f.input :profile
      f.input :image, :as => :file
      f.input :fee
      f.has_many :trainer_categories, allow_destroy: true, heading: false,
                                  new_record: true do |k|
        k.input :category_id,
                label: 'カテゴリー', as: :select, collection: Category.all.map{|a| [a.name, a.id]}
      end
      f.has_many :gym_trainers, allow_destroy: true, heading: false,
                                  new_record: true do |t|
        t.input :gym_id,
                label: 'カテゴリー', as: :select, collection: Gym.all.map{|a| [a.name, a.id]}
      end
      f.actions
    end
  end
end
