require 'rails_helper'

describe MoviesHelper do

    it "identifies evens" do
        expect(helper.oddness(2)).to eq("even")
    end
    it "identifies odds" do
        expect(helper.oddness(3)).to eq("odd")
    end
end