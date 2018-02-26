class Pokemon
  attr_accessor :name, :type, :db, :hp
  attr_reader :id


  def initialize(id:, name:, type:, hp: 60, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end

  def self.find(id, db)
    gotta_find_em = db.execute("SELECT * FROM pokemon WHERE id=?", id).flatten
    Pokemon.new(id:gotta_find_em[0], name:gotta_find_em[1], type:gotta_find_em[2], db: db)
  end

  def self.alter_hp(hp, db)
    db.execute("UPDATE pokemon SET hp = ?", hp)
  end
end
