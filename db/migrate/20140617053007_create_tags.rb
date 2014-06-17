class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags, id: :uuid  do |t|
      t.string :name, index: true

      t.timestamps
    end

    create_join_table :articles, :tags
  end
end
