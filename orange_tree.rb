class OrangeTree
attr_reader :age, :height

MAX_AGE = 20
SEMI_MATURITY = 3
FULL_MATURITY = 4

  def initialize
    @age = 0
    @height = 0
    @alive = true
  end

  def one_year_passes
    if @alive
      @age += 1
        if @age >= MAX_AGE
          death
        elsif @age >= SEMI_MATURITY
          produce_fruit
        end
      @height += 5
    else
      puts "Your tree is a stump, remember?"
    end
  end

  def count_oranges
    if @alive
      puts "Your tree has #{@oranges} oranges!"
    else
      puts "A dead tree has no oranges."
    end
  end

  def pick_fruit
    if @alive
      if @oranges > 0
        @oranges -= 1
        puts "You picked an orange. It was delicious!"
      else
        puts "There are no oranges left. You will need to wait until next year."
      end
    else
      puts "A dead tree has no fruit to pick."
  end

private

  def death
    puts "The tree died :("
    @alive = false
  end

  def produce_fruit
    @oranges = 0

    if @age >= SEMI_MATURITY && @age < FULL_MATURITY
      @oranges = 3
    elsif
      @age >= FULL_MATURITY
      @oranges = 6
    end
  end
end

orange_tree = OrangeTree.new

orange_tree.age
puts orange_tree.height
orange_tree.one_year_passes
orange_tree.one_year_passes
puts orange_tree.age
orange_tree.one_year_passes
puts orange_tree.age
orange_tree.one_year_passes
orange_tree.count_oranges
8.times do orange_tree.pick_fruit end
orange_tree.count_oranges
