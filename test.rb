# Methord sort returns a sorted list

array = ["one", "two", "three", "four"]

def sort arr
  sort_arr arr, []
end

def sort_arr unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  still_unsorted = []
  smallest = unsorted.pop
  unsorted.each do |item|
    if smallest > item
      still_unsorted.push smallest
      smallest = item
    elsif smallest < item
      still_unsorted.push item
    end
  end
  sorted.push smallest
  sort_arr still_unsorted, sorted
end

puts sort(array)