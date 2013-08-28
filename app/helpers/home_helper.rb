module HomeHelper
  def total_on
    # count("minute(created_at)",:group => "minute(created_at)")

    prices_by_day = Quote.where(:created_at => Date.today.beginning_of_day..Date.today.end_of_day).group("second(created_at)").select("sum(price) as total_price")
    arr = Array.new
    (Date.today.to_date..Date.today).map do |date|
      prices_by_day.each {|n| arr.push( n.total_price)}
    end
    arr.inspect

  end

end