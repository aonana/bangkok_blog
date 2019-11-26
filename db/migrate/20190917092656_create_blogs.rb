class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string    :name
      t.text      :date
      t.text      :title
      t.text      :text
      t.text      :image
      t.text      :contents

      t.timestamps
    end
  end
end
