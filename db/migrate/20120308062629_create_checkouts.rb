class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :user_id
      t.text :what_i_got_done
      t.text :what_i_didnt_get_done
      t.text :what_i_still_need_to_do

      t.timestamps
    end
  end
end
