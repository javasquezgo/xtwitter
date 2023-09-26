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

  let(:user) { create(:user) }

  describe 'validations' do
    it {should validate_presence_of(:user_email)}
    it {should validate_uniqueness_of(:user_email)}
    it {should validate_length_of(:password)}
  end
end