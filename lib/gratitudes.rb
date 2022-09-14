class Gratitudes
  def initialize
    @gratitiudes = []
  end

  def add(gratitiude)
    @gratitiudes.push(gratitiude)
  end

  def format
    formatted = "Be grateful for: "
    formatted += @gratitiudes.join(", ")
  end
end