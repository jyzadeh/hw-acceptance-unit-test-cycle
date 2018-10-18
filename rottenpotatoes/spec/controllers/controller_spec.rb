require 'rails_helper'

describe MoviesController do

    describe "#director" do

        context "When movie has a director" do
            it "should find movies with the same director" do
                @movie_id = "1234"
                @movie = double('test_movie', :director => "Freddy")
                expect(Movie).to receive(:find).with(@movie_id).and_return(@movie)
                expect(@movie).to receive(:director)
                get :similar, :id => @movie_id
                expect(response).to render_template(:similar)
            end
        end

        context "When movie has no director" do
            it "should redirect to movies path" do
                @movie_id = "1234"
                @movie = double('fake_movie').as_null_object
                expect(Movie).to receive(:find).with(@movie_id).and_return(@movie)
                get :similar, :id => @movie_id
                expect(response).to redirect_to(movies_path)
            end
        end
        
    end
end