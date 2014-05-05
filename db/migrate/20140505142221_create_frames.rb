class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.string :title
      t.string :institution
      t.date :from
      t.date :to
      t.text :description
      t.string :kind

      t.timestamps
    end
  end
end
