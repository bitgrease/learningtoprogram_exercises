class OrangeTree
  def initialize
    @oranges = 0
    @height = 1
    @age = 0
  end

  def age_one_year
    if @age < 10 
      @age += 1
      puts "#{@oranges} fell off because they were unpicked..." if @oranges != 0
      @oranges = 0
      @height += 2
      orange_production
    else
      tree_dies
    end
  end

  def number_of_oranges
    @oranges
  end

  def get_height
    puts @height
  end

  def pick_orange
    if @dead
      puts "Can't pick oranges from a dead tree."
    elsif @oranges != 0
      @oranges -= 1
      puts "#{@oranges} left on the tree."
    else
      puts "That tree doesn't have oranges!"
    end
  end

  private

  def tree_dies
    if @dead
      puts "This tree is dead, move on."
      return
    end 
    @dead = true
    @oranges = 0
    puts "The tree is dead."
  end

  def orange_production
    if @age < 2
      puts "Too young to produce oranges."
    elsif @age < 8
      @oranges += rand(16)
      puts "#{@oranges} were produced on your tree."
    else
      @oranges += rand(6)
      puts "#{@oranges} grew on that old tree."
    end
  end
end

oj = OrangeTree.new

oj.number_of_oranges
oj.age_one_year
oj.number_of_oranges
oj.pick_orange
oj.age_one_year
oj.number_of_oranges
oj.pick_orange
oj.age_one_year
oj.number_of_oranges
oj.get_height
7.times {oj.age_one_year}
oj.age_one_year
oj.age_one_year


