class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string  :dictionary_entry
      t.string  :sorted_word
      t.integer :sorted_length

      t.timestamps
    end
    add_index   :words, :sorted_word
  end
end
