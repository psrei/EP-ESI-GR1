require 'rails_helper'

RSpec.describe UsersController do
   describe "create" do
       it { should validate_length_of(:password).is_at_least(6).with_message(/password deve ter pelo menos 6 caracteres/) }
   end
    
end
