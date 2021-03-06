class CreateTranslationTable < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        News.create_translation_table!({title: :string, body: :text}, {migrate_data: true, remove_source_columns: true})
      end

      dir.down do
        News.drop_translation_table! migrate_data: true
      end
    end
  end
end
