class Audio_source

attr_reader :name, :ip

@@sources = []

def initialize(name, ip)
  @name = name
  @ip = ip
  @@sources << self
end

def delete
  @@sources.remove(self)
  Audio_source.remove_instance_variable(self)
end

def players
  Player.find(:all)
end

end
