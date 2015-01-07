class ListItem
  attr_accessor :value, :next

  def initialize(val, nxt = nil)
    @value = val
    @next  = nxt
  end

end

def new_list(array)
  if array.length > 1
    ListItem.new(array.shift, new_list(array) )
  else
    ListItem.new(array.first)
  end
end

def reverse(list)
  array = []
  while list
    array << list.value
    list = list.next
  end
  new_list(array.reverse)
end

def list_append(l1, l2)
  list_head = l1
    while l1.next
      l1 = l1.next
    end
  l1.next = l2
  return list_head
end

def list_prepend(l1, l2)
  list_head = l2
  while l2.next
    l2 = l2.next
  end
  l2.next = l1
  return list_head
end

def insert_after(l1, l2, v)
  list_head = l1
  unless l1.value = v
    l1 = l1.next
  end
  l1.next = l2
  return list_head
end

def insert_before(l1, l2, v)
  list_head = l1
  unless l1.next.value = v
    l1 = l1.next
  end
  l1.next = l2
  return list_head
end
