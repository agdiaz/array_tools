module ArrayTools
  module Sorting
    # Mergesort is a comparison-based algorithm that focuses on how to merge
    # together two pre-sorted arrays such that the resulting array
    # is also sorted.
    # Source: https://brilliant.org/wiki/merge/
    class MergeSort
      class << self
        def sort(collection)
          return [] unless collection
          return collection if collection.size <= 1

          middle = collection.size / 2
          left = collection[0..middle - 1]
          right = collection[middle..-1]

          left = sort(left)
          right = sort(right)

          merge(left, right)
        end

        private

        def merge(left, right)
          result_collection = []
          left_index = 0
          right_index = 0

          while left_index < left.size && right_index < right.size
            if left[left_index] <= right[right_index]
              result_collection << left[left_index]
              left_index += 1
            else
              result_collection << right[right_index]
              right_index += 1
            end
          end

          result_collection += left[left_index..-1] if left
          result_collection += right[right_index..-1] if right

          result_collection
        end
      end
    end
  end
end
