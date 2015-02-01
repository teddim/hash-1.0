require_relative "testing_library"
require "pp"

unless File.exists?(".name")
  print "Please enter your name\n"
  name = $stdin.gets.chomp
  File.open((".name"), "w") do |f|
    f.puts name
  end
end

people = {
  "joe" => {
    first_name: "Joe",
    last_name: "Jenkins",
    preferences: {
      meal: "meat",
      favorite_genres: ["jazz", "soul"],
    },
    sitting_next_to: :sue,
    correspondence: [
      {date: "11/4/2014", description: "sent invitation"},
      {date: "12/2/2014", description: "replied yes"},
    ],
  },
  "sue" => {
    :first_name => "Sue",
    :last_name => "Summers",
    :preferences => {
      :meal => "fish",
      :favorite_genres => ["funk", "blues"],
    },
    sitting_next_to: :joe,
    correspondence: [
      {date: "11/7/2014", description: "sent invitation"},
      {date: "12/8/2014", description: "replied yes + 1"},
    ],
  },
}

def joes_last_name(people)
  people["joe"][:last_name]
end

def last_names(people)
  # multi_names = [ people["joe"][:last_name] ] +
  #             [people["sue"][:last_name]]
  result = []
  people.each do |person, person_data|
    # people.each_value do |person_data|
    result << person_data[:last_name]
  end
  result
end

def first_fav_genre(people)
  result = []
  people.each do |person, person_data|
    # people.each_value do |person_data|
    result << person_data[:preferences][:favorite_genres][0]
  end
  result

end

def joes_neighbor(people)
  #use this as the key for find the last name
  first_name= people["joe"][:sitting_next_to]
  people[first_name.to_s][:last_name]

end

def sues_meal(people)
  people["sue"][:preferences][:meal]
end

def joes_first_letter_date(people)
  people["joe"][:correspondence][0][:date]
end

def sues_last_letter_desc(people)
  letter_date = people["sue"][:correspondence]
  letter_date.last[:description]
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

results = []

results << check("joes_last_name", joes_last_name(people), "Jenkins")
results << check("last_names", last_names(people), ["Jenkins", "Summers"])
results << check("first_fav_genre", first_fav_genre(people), ["jazz", "funk"])
results << check("joes_neighbor", joes_neighbor(people), "Summers")
results << check("sues_meal", sues_meal(people), "fish")
results << check("joes_first_letter_date", joes_first_letter_date(people), "11/4/2014")
results << check("sues_last_letter_desc", sues_last_letter_desc(people), "replied yes + 1")

send_results(results)
