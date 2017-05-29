module ArrayTools
  module Sorting
    # Quicksort is a comparison-based algorithm that uses divide-and-conquer
    # to sort an array.
    # The algorithm picks a pivot element and then rearranges the array into
    # two subarrays
    # Source: https://brilliant.org/wiki/quick-sort/
    class QuickSort
      class << self
        def sort(collection)
          return [] unless collection && collection.respond_to?(:size)
          return collection if collection.size <= 1

          less = []
          pivot_list = []
          more = []

          pivot = collection.first
          collection.each do |i|
            if i < pivot
              less << i
            elsif i > pivot
              more << i
            else
              pivot_list << i
            end
          end

          less = sort(less)
          more = sort(more)

          less + pivot_list + more
        end
      end
    end
  end
end
