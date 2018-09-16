class CreateMoviesCrews < ActiveRecord::Migration[5.2]
  def change
    create_join_table :movies, :crews do |t|
    end
  end
end
