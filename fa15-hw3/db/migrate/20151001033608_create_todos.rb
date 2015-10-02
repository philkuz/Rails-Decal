class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.boolean :finished

      t.timestamps
    end
  end
end
