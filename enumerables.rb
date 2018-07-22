require 'byebug'

class Array

def my_each(&prc)
  self.length.times do |i|
    prc.call(self[i])
  end
  return self
end

def my_select(&prc)
  ps = []
  self.length.times do |i|
    if prc.call(self[i])
      ps<<self[i]
    end
  end
    return ps
end

def my_reject(&prc)
  ps = []
  self.length.times do |i|
    if !prc.call(self[i])
      ps<<self[i]
    end
  end
    return ps
end

def my_any(&prc)
  self.length.times do |i|
    if prc.call(self[i])
      return true
    end
  end
  return false
end


  def increase_heights
    ps = []
    self.length.times do |i|
      ps <<self[i]*4
    end
    ps
  end
  def increase_by_one
    self.each do |i|
      i+=1
    end
  end


  def my_flatten
    ps = []
    self.length.times do |i|
      if self[i].is_a?(Array)
        ps.concat(self[i].my_flatten)
      else ps<<self[i]
      end
    end
    return ps
  end

  def my_rotate(rotations)
    for i in 1..rotations do
      temp = self.pop
      self.unshift(temp)
    end
    return self
  end



    return_value = [1,2,3].my_rotate(5)
    p return_value
end
