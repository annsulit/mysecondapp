class CreateMikeAnnKids < ActiveRecord::Migration
  def change
    create_table :mike_ann_kids do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age

      t.timestamps
    end
  end
end
