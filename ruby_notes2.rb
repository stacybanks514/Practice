class Bored
  attr_reader :title
  def title
    @title = "inferno"
  end
  def article
    @title.capiatlize
    @title
  end
end

inf = Bored.new
puts inf
puts @title