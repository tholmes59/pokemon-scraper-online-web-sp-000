# class Pokemon
  
#   attr_accessor :id, :name, :type, :db
  
#   @@all = []
  
#   def initialize(id:, name:, type:, db:)
#     @id = id 
#     @name = name
#     @type = type
#     @db = db
#     @@all << self
#   end
  
#   def self.all
#     @@all
#   end
  
#   def self.save(id:, name:, type:, db:, database_connection)
#     database_connection.execute("INSERT INTO pokemon (id, name, type, db) VALUES (?, ?, ?)", id, name, type, db)
#     end
#   end
  
# end

class Pokemon
  attr_accessor :name, :type, :db, :id, :hp

  def initialize(keywords)

  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(num, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
    new_pokemon = self.new(pokemon)
    new_pokemon.id = pokemon[0][0]
    new_pokemon.name = pokemon[0][1]
    new_pokemon.type = pokemon[0][2]
    new_pokemon.hp = pokemon[0][3]
    return new_pokemon
  end

  def alter_hp(num, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", [num], [self.id])
    self.hp = num
  end
end
