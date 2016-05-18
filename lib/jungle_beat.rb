require_relative 'linked_list'

class JungleBeat
attr_reader   :list
attr_accessor :head
attr_accessor :head
attr_accessor :next_node
attr_accessor :data

  def initialize
    @list = LinkedList.new
  end

  def append(data)  #adds to the end -> changes the tail
   data = data.split
   data.each do |string|
     list.append(string)
   end
  end

  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r 500 -v Boing #{beats}`
  end

end

jb = JungleBeat.new
jb.append("deep doo ditt woo hoo shu")
jb.count
jb.play
