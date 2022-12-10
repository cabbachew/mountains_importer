module MountainsHelper
  def counts_by_difficulty(mountains)
    groups = categorize_by_height(mountains).count
    order_by_category(groups)
  end

  private
  def categorize_by_height(mountains)
    mountains.group("case 
      when height <800 then 'low' 
      when height >=800 and height <1100 then 'medium'
      when height >=1100 then 'high'
    end")
  end

  def order_by_category(groups)
    groups.sort_by do |k,v|
      case k
      when "low" then 1
      when "medium" then 2
      when "high" then 3
      end
    end
  end
end
