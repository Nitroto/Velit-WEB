ActiveAdmin.register News do
  permit_params :title, :body, translations_attributes: [:locale, :id, :title, :body]
  menu :label => 'News'
  index do
    column :title do |p|
      BlueCloth.new(p.title).to_html.html_safe
    end
    column 'Text', :body do |p|
      BlueCloth.new(p.body).to_html.html_safe
    end
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

  show do |model|
    panel I18n.translate('active_admin.news.globalized_model') do
      translate_attributes_table_for model do
        row :title do |p|
          BlueCloth.new(p.title).to_html.html_safe
        end
        row :body do |p|
          BlueCloth.new(p.body).to_html.html_safe
        end
      end
    end
  end
end