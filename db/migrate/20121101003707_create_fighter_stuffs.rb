class CreateFighterStuffs < ActiveRecord::Migration
  def change
    create_table :fighter_stuffs do |t|
      t.string     :bonus_stat
      t.references :character
      t.timestamps
    end
  end
end
