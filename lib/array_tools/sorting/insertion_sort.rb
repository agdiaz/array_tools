module ArrayTools
  module Sorting
    # Insertion sort is a comparison-based algorithm that builds a final sorted
    # array one element at a time. It iterates through an input array and
    # removes one element per iteration, finds the place the element
    # belongs in the array, and then places it there.
    # Source: https://brilliant.org/wiki/insertion/
    class InsertionSort
      class << self
        def sort(collection)
          return [] unless collection && collection.respond_to?(:size)
          return collection if collection.size == 1

          (1..collection.size - 1).each do |slot|
            value = collection[slot]
            test_slot = slot - 1

            while test_slot > -1 && collection[test_slot] > value
              collection[test_slot + 1] = collection[test_slot]
              test_slot -= 1
            end

            collection[test_slot + 1] = value
          end

          collection
        end
      end
    end
  end
end
