ActiveAdmin.register Partner do
  permit_params :name, :home, :logo
  menu label: 'Partners'
  index do
    column :name
    column 'Home page', :home
    column :logo
    actions
  end
end
