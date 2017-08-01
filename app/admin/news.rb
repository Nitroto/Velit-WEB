ActiveAdmin.register News do
  permit_params :title, :body
  menu :label => 'News'
  index do
    column :title
    column 'Text', :body
    actions
  end

  inputs do
    form do |f|
      f.translate_inputs do |t|
        t.input :title
        t.input :body
      end
    end
  end

end