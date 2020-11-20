ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  #try adding categories: []
  permit_params :name, :quantity, :price, :description, :image, product_categories_attributes: [:id, :category_id, :product_id, :_destroy]
  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.has_many :product_categories, allow_destroy: true do |c|
      c.input :category
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :quantity, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
