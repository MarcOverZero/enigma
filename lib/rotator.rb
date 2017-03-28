require 'pry'
require './lib/offset'
require './lib/key'

class Rotator
  attr_reader :key

  def initialize
    @key = Key.new.cut_key
    @offset = Offset.new.run
  end

  def rotation
    rotation_a
    rotation_b
    rotation_c
    rotation_d

    [@a, @b, @c, @d]
  end

  def rotation_a
    @a = "#{@key[0]}#{@key[1]}".to_i + @offset.a
  end

  def rotation_b
    @b = "#{@key[1]}#{@key[2]}".to_i + @offset.b
  end

  def rotation_c
    @c = "#{@key[2]}#{@key[3]}".to_i + @offset.c
  end

  def rotation_d
    @d = "#{@key[3]}#{@key[4]}".to_i + @offset.d
  end
end