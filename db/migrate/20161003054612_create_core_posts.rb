class CreateCorePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :core_posts do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
