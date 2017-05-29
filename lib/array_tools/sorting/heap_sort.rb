module ArrayTools
  module Sorting
    # Quicksort is a comparison-based algorithm that uses divide-and-conquer
    # to sort an array.
    # The algorithm picks a pivot element and then rearranges the array into
    # two subarrays
    # Source: https://brilliant.org/wiki/heap-sort/
    class HeapSort
      class << self
        def sort(collection)
          return [] unless collection && collection.respond_to?(:size)
          return collection if collection.size <= 1

          heap_size = collection.size
          build_heap(collection)
          (heap_size - 1).downto(1).each do |index|
            swap!(collection, 0, index)
            heap_size -= 1
            max_heapify(collection, heap_size, 0)
          end

          collection
        end

        private

        def build_heap(collection)
          heap_size = collection.size
          (heap_size / 2).downto(0).each do |index|
            max_heapify(collection, heap_size, index)
          end
        end

        def max_heapify(coll, heap_size, index)
          left = 2 * index + 1
          right = 2 * index + 2
          largest = index

          largest = left if left < heap_size && coll[left] > coll[largest]
          largest = right if right < heap_size && coll[right] > coll[largest]

          return unless largest != index

          swap!(coll, index, largest)
          max_heapify(coll, heap_size, largest)
        end

        def swap!(collection, i, j)
          swap = collection[i]
          collection[i] = collection[j]
          collection[j] = swap
        end
      end
    end
  end
end
