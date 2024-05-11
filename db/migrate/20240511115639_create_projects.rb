class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :image
      t.string :github_link
      t.string :project_link

      t.timestamps
    end
  end
end
