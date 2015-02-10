require "./questions"
require "colorize"


@javascript = @javascript_array
@ruby = @ruby_array
@other = @other_array
active = true
@all_arrays = [@javascript, @ruby, @other]

def get_question(array, difficulty)
  potential_questions = []
  if difficulty >= 1
    array.each do |question|
      if question[:difficulty] == difficulty
        potential_questions.push(question)
      end
    end
    question = potential_questions.sample
    question ? array.delete_at(array.index(question)) : question = false
  else
    question = array.sample
    question ? array.delete_at(array.index(question)) : question = false
  end
  question
end

def get_array(topic, difficulty)
  if topic.downcase.match("j")
    q = get_question(@javascript, difficulty)
  elsif topic.downcase.match("r")
    q = get_question(@ruby, difficulty)
  elsif topic.downcase.match("x")
    array = @all_arrays.sample
    q = get_question(array, difficulty)
  else
    q = get_question(@other, difficulty)
  end
  q
end

def get_difficulty_name(difficulty)
  if difficulty == 3
    return "HARD"
  elsif difficulty == 2
    return "MEDIUM"
  else
    return "EASY"
  end
end

def get_color_line(color)
  puts "----------------------------------------------------------------------".colorize( :background => color.to_sym)
end


while active
  puts "There are #{@javascript.count} Javascript questions left".colorize(:blue)
  puts "There are #{@ruby.count} Ruby questions left".colorize(:blue)
  puts "There are #{@other.count} Other questions left".colorize(:blue)
  get_color_line("light_green")
  puts "Please Pick a Topic (or enter q to quit)".colorize(:green)
  puts "j = javascript, r = ruby/rails, o = other, x = random".colorize(:green)
  topic = gets.chomp
  if topic.downcase.match("q")
    active = false
  else
    puts "Please pick a difficulty level 1-3 (input 0 for random)".colorize(:green)
    difficulty = gets.chomp.to_i
    info = get_array(topic, difficulty)
    if info
      get_color_line("light_blue")
      puts " #{get_difficulty_name(info[:difficulty])} #{info[:topic]} QUESTION: #{info[:question].colorize(:cyan)}"
      get_color_line("light_blue")
      puts "*** Press enter when ready for answer ***".colorize( :background => :light_white)
      gets.chomp
      get_color_line("light_yellow")
      puts " ANSWER: #{info[:answer]}".colorize(:red)
      get_color_line("light_yellow")
    else
      get_color_line("light_red")
      puts "There are no more questions in this difficulty/topic".colorize(:white)
      get_color_line("light_red")
    end
  end
end
