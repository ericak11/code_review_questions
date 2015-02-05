require "./questions"
require "pry"
require "colorize"


@javascript = @javascript_array
@ruby = @ruby_array
active = true

def get_question(array, difficulty)
  potential_questions = []
  array.each do |question|
    if question[:difficulty] == difficulty
      potential_questions.push(question)
    end
  end
  question = potential_questions.sample
  question ? array.delete_at(array.index(question)) : question = false
  question
end

def get_array(topic, difficulty)
  if topic.downcase.match("j")
    q = get_question(@javascript, difficulty)
  elsif topic.downcase.match("r")
    q = get_question(@ruby, difficulty)
  else
  end
  q
end


while active
  puts "Please Pick a Topic (or enter q to quit)".colorize(:green)
  topic = gets.chomp
  if topic.downcase.match("q")
    active = false
  else
    puts "Please pick a difficulty level 1-3".colorize(:green)
    difficulty = gets.chomp.to_i
    info = get_array(topic, difficulty)
    if info
      puts "----------------------------------------------------------------------".colorize( :background => :light_blue)
      puts " QUESTION: #{info[:question].colorize(:cyan)}"
      puts "----------------------------------------------------------------------".colorize( :background => :light_blue)

      puts "*** Press enter when ready for answer ***".colorize( :background => :light_white)
      gets.chomp
      puts "----------------------------------------------------------------------".colorize( :background => :light_yellow)
      puts " ANSWER: #{info[:answer]}".colorize(:red)
      puts "----------------------------------------------------------------------".colorize( :background => :light_yellow)
    else
      puts "----------------------------------------------------------------------".colorize( :background => :light_red)
      puts "There are no more questions in this difficulty/topic".colorize(:white)
      puts "----------------------------------------------------------------------".colorize( :background => :light_red)
    end
  end
end
