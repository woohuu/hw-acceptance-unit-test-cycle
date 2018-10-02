#steps for dealing with the movies database

Given /the following movies exist/ do |table|
    table.hashes.each do |movie|
        #create the database with hash values
        Movie.create(movie)
    end
end

Then /^the director of "(.*)" should be "(.*)"$/ do |arg1, arg2|
    director = Movie.find_by_title(arg1)[:director]
    expect(director).to eq("#{arg2}")
end
