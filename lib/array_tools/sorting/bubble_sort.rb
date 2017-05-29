module ArrayTools
  module Sorting
    # Bubble sort is a comparison based algorithm that compares each pair of
    # elements in an array and swaps them if they are out of order until the
    # entire array is sorted. For each element in the list,
    # the algorithm compares every pair of elements.
    # Source: https://brilliant.org/wiki/bubble-sort/
    class BubbleSort
      class << self
        def sort(collection)
          return [] unless collection
          return collection if collection.size <= 1

          (0..collection.size).each do
            (0..collection.size - 2).each do |index|
              next unless collection[index] > collection[index + 1]

              swap = collection[index]
              collection[index] = collection[index + 1]
              collection[index + 1] = swap
            end
          end

          collection
        end
      end
    end
  end
end
