require 'rails_helper'
# Esta línea requiere el archivo 'rails_helper', que es un archivo de configuración
# comúnmente utilizado en los tests de Rails. Contiene configuraciones y cargas necesarias
# para que los tests funcionen correctamente.

# Esta línea comienza una descripción de una prueba (test).
# RSpec.describe especifica que estás describiendo un objeto de la clase User.
# La opción `type: :model` indica que esta es una prueba de modelo.
RSpec.describe User, type: :model do


  
  describe 'associations' do
    it { should have_many(:tweets) } 
    it { should have_many(:likes) }
    it { should have_many(:retweets) }
    it { should have_many(:quotes) }
    it { should have_many(:bookmarks) } 
  end

=begin
  describe 'validations' do
    before {FactoryBot.build(:user)}

    it { should validate_presence_of(:user_name) }
  end

  user_test = FactoryBot.create(:user)

  describe 'validations' do
    it 'Should not let a user be created if the password does not meet some requirements' do
      expect(user_test).to be_valid
        end
  end

  describe 'validations' do
    it 'Email must contain @' do
      expect(user_test.user_email.include?('@')).to be(true)  
    end
  end

  describe 'validations' do
    it 'Full name must have length greater than 4' do
      expect(user_test.full_name.length).to be > 4  
    end
  end

  describe 'validations' do
    it 'User name must have length greater than 4' do
      expect(user_test.user_name.length).to be > 4  
    end
  end
=end
end

=begin
  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "full_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_email"
  end  
  
=end