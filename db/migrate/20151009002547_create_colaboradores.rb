class CreateColaboradores < ActiveRecord::Migration
  def change
    create_table :colaboradores do |t|
      t.string :nome
      t.string :matricula
      t.string :contrato
      t.float :salario

      t.timestamps null: false
    end
  end
end
