Event = Struct.new(:attributes) do
  def id
    attributes[:id]
  end

  def index!
    :indexed
  end
end
