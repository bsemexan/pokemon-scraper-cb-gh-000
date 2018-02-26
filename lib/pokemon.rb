class Pokemon
  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO db (name, type,) VALUES (?,?)", name, type)
  end

  def self.find(name, type, db)
  end
end
