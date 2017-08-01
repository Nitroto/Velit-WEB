ActiveAdmin.register News do
  permit_params :title, :body
  menu :label => 'News'
  index do
    column :title
    column 'Text', :body
    actions
  end

  form do |f|
    f.inputs do
      f.translate_inputs do |t|
        t.input :title
        t.input :body
      end
    end
    f.actions
  end

  # show do |model|
  #   panel 'Globalized Model' do
  #     translate_attributes_table_for model do
  #       row :title
  #       row :body do |p|
  #         BlueCloth.new(p.teaser).to_html.html_safe
  #       end
  #     end
  #   end
  # end

end