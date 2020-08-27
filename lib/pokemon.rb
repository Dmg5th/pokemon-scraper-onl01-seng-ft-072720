class Pokemon
  attr_accessor  :id, :name, :type, :db 

  def initialize (id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save
    sql = <<-SQL 
    INSERT INTO Pokemon (name, type) VALUES (?,?)
    SQL
    DB[:conn].execute(sql)
  end 


end
