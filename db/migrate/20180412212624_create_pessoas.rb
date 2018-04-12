class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.integer :idade
      t.string :endereco

      t.timestamps
    end
  end
end
