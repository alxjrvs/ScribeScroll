class Character < ActiveRecord::Migration
  def change
    create_table :characters do |t|
     Game::STATS.each do |stat|
        t.integer  stat.downcase.to_sym
      end
      t.timestamps
    end
  end
end
