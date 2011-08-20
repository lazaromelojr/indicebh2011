# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110812005109) do

  create_table "a_indice_bhs", :force => true do |t|
    t.text     "textoprincipal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_indicebhs", :force => true do |t|
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cadastro_clientes", :force => true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "telefone"
    t.string   "fax"
    t.string   "tipologradouro"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cadastro_curriculos", :force => true do |t|
    t.string   "name"
    t.string   "cpf"
    t.string   "rg"
    t.string   "sexo"
    t.datetime "datanascimento"
    t.string   "email"
    t.string   "telefone"
    t.string   "celular"
    t.string   "rua"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "estado"
    t.string   "cep"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "clietes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contatos", :force => true do |t|
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estruturaindicebhs", :force => true do |t|
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indice_bhs", :force => true do |t|
    t.text     "testoprincipal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indice_pincipals", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indice_tvs", :force => true do |t|
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indiceconexaos", :force => true do |t|
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indices", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indicetvs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nossos_servicos", :force => true do |t|
    t.text     "pesquisaQuantitativa"
    t.text     "pesquisaQualitativa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pequisa_qualitativas", :force => true do |t|
    t.string   "pesquisaqualitativa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pesquisaqualitativas", :force => true do |t|
    t.text     "pesquisaqualitativa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicosindices", :force => true do |t|
    t.string   "servico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "usuarios", :force => true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
