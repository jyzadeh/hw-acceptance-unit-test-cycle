require 'rails_helper'

describe Movie do
    describe "#same_director" do
        it "should find movies with the same director" do
            movie1 = Movie.create! :director => "James Cameron"
            movie2 = Movie.create! :director => "James Cameron"
            expect(Movie.same_directors(movie1.director)).to include(movie2)
        end
        it "should not find movies with different directors" do
            movie1 = Movie.create! :director => "James Cameron"
            movie2 = Movie.create! :director => "Frank Freddy"
            expect(Movie.same_directors(movie1.director)).not_to include(movie2)
        end
    end
end