ActiveAdmin.register Partner do
  permit_params :name, :home
  menu :label => 'Partners'
  index do
    column :name
    column 'Home page', :home
    actions
  end
end