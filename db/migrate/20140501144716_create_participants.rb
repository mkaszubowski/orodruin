class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :user, index: true
      t.references :convention, index: true

      t.timestamps
    end
  end
end
