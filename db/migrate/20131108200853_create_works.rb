class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.references :work_type, index: true
      t.string :title
      t.string :url
      t.string :thumbnail
      t.date :date_created

      t.timestamps
    end
  end
end
