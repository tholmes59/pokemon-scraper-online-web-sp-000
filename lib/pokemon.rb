class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  @@all = []
  
  def initialize(id, name, type, db)
    @id = id 
    @name = name
    @type = type
    @db = db
    @@all << self
  end
  
end


# class Cat
 
#   @@all = []
 
#   def initialize(name, breed, age)
#     @name = name
#     @breed = breed
#     @age = age
#     @@all << self
#   end
 
#   def self.all
#     @@all
#   end
 
#   def self.save(name, breed, age, database_connection)
#     database_connection.execute("INSERT INTO cats (name, breed, age) VALUES (?, ?, ?)",name, breed, age)
#   end
# end