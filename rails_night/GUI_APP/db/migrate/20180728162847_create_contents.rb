class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.integer :project_id
      t.string :title
      t.string :type

      t.timestamps
    end
  end
end
