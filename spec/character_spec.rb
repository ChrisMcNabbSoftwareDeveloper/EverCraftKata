require 'character'

describe Character do

  before(:each) do
    @character = Character.new
    @character_enemy = Character.new
  end

  it "has a name" do
    @character.name.should == "Porthos"
  end

  it "can set name" do
    @character.name = "jimbob"
    @character.name.should == "jimbob"
  end

  it "can set alignment to Good" do
    @character.alignment = "Good"
    @character.alignment.should == "Good"
  end

  it "can set alignment to Evil" do
    @character.alignment = "Evil"
    @character.alignment.should == "Evil"
  end

  it "can set alignment to Neutral" do
    @character.alignment = "Neutral"
    @character.alignment.should == "Neutral"
  end

  it "has an armor class" do
    @character.armor_class.should == 10
  end

  it "can set armor class" do
    @character.armor_class = 8
    @character.armor_class.should == 8
  end

  it "has hit points" do
    @character.hit_points.should == 5
  end

  it "can set hit points" do
    @character.hit_points = 30
    @character.hit_points.should == 30
  end

  it "can attack a wimp and win with an attack value of 17" do
    @character_enemy.armor_class = 10
    @character.attack(@character_enemy).should be_true
  end

  it "can attack a wimp and lose with an attack value of 3" do
    @character_enemy.armor_class = 19
    @character.attack(@character_enemy).should be_false
  end

  it "can attack and damage an enemy" do
    @character_enemy.armor_class = 13
    @character.attack(@character_enemy).should be_true
    @character_enemy.hit_points.should == 4
  end

  it "can double damage with a critical hit" do
    @character.shim_roll_value(20)
    @character.attack(@character_enemy).should be_true
    @character_enemy.hit_points.should == 3
  end

  it "can kill an enemy" do
    @character.shim_roll_value(20)
    3.times { @character.attack(@character_enemy).should be_true }
    @character_enemy.hit_points.should <= 0
  end

  it "has the abilities of Strength, Desterity, Consitution, Wisdom, Intelligence, and Charisma" do
    @character.strength.should == 10
    @character.dexterity.should == 10
    @character.constitution.should == 10
    @character.wisdom.should == 10
    @character.intelligence.should == 10
    @character.charisma.should == 10
  end

  
end
