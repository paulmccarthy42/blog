class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :author
      t.boolean :public

      t.timestamps
    end
  end
end
