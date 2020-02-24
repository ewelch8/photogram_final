require 'rails_helper'

RSpec.describe Photo, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:owner) }

    it { should have_many(:comments) }

    it { should have_many(:likes) }

    end

    describe "InDirect Associations" do

    it { should have_many(:fans) }

    it { should have_many(:commentors) }

    it { should have_many(:viewers) }

    end

    describe "Validations" do
      
    end
end
