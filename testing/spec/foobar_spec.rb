# spec/foobar_spec.rb
require 'foobar'

RSpec.describe Foobar do
  describe "#hello" do
    xit "returns world" do
      expect(Foobar.new.hello).to eq 'world' 
    end
  end
end
