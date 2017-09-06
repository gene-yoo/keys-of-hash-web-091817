class Hash
  def keys_of(*arguments)
    arguments.collect do |argument|
      self.keys.select do |key|
        self.fetch(key) == argument
      end
    end.flatten
  end
end
