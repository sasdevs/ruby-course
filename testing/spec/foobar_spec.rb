# spec/foobar_spec.rb
require 'foobar'

RSpec.describe Foobar do
  before :each do
   # this will run before each test
  end

  after :each do
   # this will run after each test
  end

  describe "#hello" do
    it "returns world" do
      expect(Foobar.new.hello).to eq 'world' 
    end
  end

  describe "something else" do
    describe "something about the 'else'" do
      context "a user has a password" do
        before :each do
         # this will run before each test
         # User.new(password: 'asdasd')
        end

        it "should allow the login" do
          x = 1
          y = 1
          expect(x).to eq y
        end
      end

      context "a user does not have a password" do
        before :each do
         # this will run before each test
         # User.new(password: nil)
        end

        it "should show a 401 page" do
          # 
        end
      end
    end 
  end

end
