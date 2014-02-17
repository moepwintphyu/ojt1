class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :Title
      t.string :Tag
      t.string :Content
      t.string :Image
      t.string :Reference
      t.string :File

      t.timestamps
    end
  end
end
