ActiveAdmin.register Partner do
  permit_params :name, :home, :logo
  menu label: 'Partners'
  index do
    column :name
    column 'Home page', :home
    column :logo
    actions
  end

  # form do |f|
  #   f.inputs 'Partners' do
  #     f.input :name
  #     f.input :home
  #     f.input :image, as: :file
  #   end
  #   f.buttons
  # end
end
