require 'rails_helper'

RSpec.describe Memory, type: :model do
  describe "model validations" do
    required_fields = [:description, :author, :person_id]
    let (:bad_memory){Memory.new}

    required_fields.each do |field|
      it "must have a #{field}" do
          expect(bad_memory).to_not be_valid
          expect(bad_memory.errors.keys).to include(field)
      end
    end
  end
end
