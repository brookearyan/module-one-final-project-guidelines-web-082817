require 'pry'

class CommandLineInterface

date = 1

  def day_trans
    trans = Transaction.where(business_day_id: 1)
    trans.map { |trans| trans.product_id }
  end

  def day_product
    ids = day_trans
    Product.where(id: ids)
  end

  def day_total
    items = day_product
    items.map.sum { |items| items.cost }
  end

  def trans_count
    trans = day_trans.count
  end

  def average_dollar_trans
    day_total/trans_count
  end

  def dept_items(dept)
    items = day_product
    Product.where(department: dept)
  end

  def dept_count(dept)
    items = dept_items(dept).count
  end

  def dept_total(dept)
    items = dept_items(dept)
    items.map.sum { |items| items.cost }
  end

  def dept_performance(dept)
    day_total/dept_total(dept) * 10
  end

  def greet
    puts "Welcome to Retail Web, your place for store-line reporting. Would you like to view today's team performance? (Y/N)"
    answer = gets.chomp
    if answer == "Y"
      puts "Your congratulations! Your team sold $#{day_total}, with a #{average_dollar_trans}."
    else
      puts "Okay."
    end
  end

  def dept_info
    puts "What department's performance would you like to view? (Accessories, Clothing, or Jewelry)"
    dept = gets.chomp

    puts "Wonderful. Your #{dept} sold $#{dept_total(dept)}, %#{dept_performance(dept)} of your business with #{dept_count(dept)} units."
  end

end
  #   def department_rank(date, dept)
  #     rankings = []
  #     items = day_product(date)
  #     percent = dept_performance(date, dept)
  #     dollars = dept_total(date, dept)
  #     items.each do
  #       rankings << "#{dept}: $#{dollars}, #{percent}%"
  #       end
  #     rankings.sort_by(dollars)
  #     return rankings.uniq
  #   end
  # end
