class Character < ActiveRecord::Migration
  def change
    create_table :characters do |t|
     Game::STATS.each do |s|
        t.integer  s[1][:short_name].downcase.to_sym, :default => 0
      end
      t.string :roles
      t.string :race
      t.string :primary_role
      t.timestamps
    end
  end
end
