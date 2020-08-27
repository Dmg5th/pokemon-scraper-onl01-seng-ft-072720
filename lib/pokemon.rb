require 'pry'
class Pokemon
  attr_accessor  :id, :name, :type, :db 

  def initialize (id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    sql = <<-SQL 
    INSERT INTO Pokemon (name, type) VALUES (?,?);
    SQL
    
    db.execute(sql,name,type)
  end 
  
  def self.find(id, db)
    sql = <<-SQL
    SELECT * FROM pokemon WHERE id = ?;
    SQL
    
    result = db.execute(sql,id).flatten 
    new_inst = Pokemon.new(id, pokemon[1], pokemon[2], db )
    binding.pry 
    
  end 


end
