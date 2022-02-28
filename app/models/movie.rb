class Movie < ActiveRecord::Base
    def self.first_movie
        Movie.first
    end

    def self.create_with_title(str)
        Movie.create(title: str)
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.all.size
    end

    def self.find_movie_with_id(num)
        Movie.find(num)
    end

    def self.find_movie_with_attributes(arg)
        Movie.find_by(arg)
    end

    def self.find_movies_after_2002
        Movie.where('release_date > 2002')
    end

    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def self.update_all_titles(str)
        Movie.update(title: str)
    end

    def self.delete_by_id(num)
        Movie.find(num).destroy
    end

    def self.delete_all_movies
        Movie.destroy_all
    end

end