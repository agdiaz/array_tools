require 'spec_helper'
require 'array_tools/sorting/insertion_sort'

module ArrayTools
  module Sorting
    describe InsertionSort do
      describe '#sort' do
        subject(:subject) { described_class.sort(collection) }

        context 'for an empty collection' do
          let(:collection) { [] }

          it 'returns the empty collection' do
            expect(subject).to eql([])
          end
        end

        context 'for a collection with size 1' do
          let(:collection) { [99] }

          it 'returns the same collection' do
            expect(subject).to eql([99])
          end
        end

        context 'for an unsorted collection' do
          let(:collection) { [5, 1, 13, 3, 12, 23, 2, 4, 9] }
          let(:expected) { [1, 2, 3, 4, 5, 9, 12, 13, 23] }

          it 'returns the sorted collection' do
            expect(described_class.sort(collection)).to eql(expected)
          end
        end

        context 'for an unsorted collection with repeated values' do
          let(:collection) { [4, 4, 2, 3, 4, 5, 1, 9, 1] }
          let(:expected) { [1, 1, 2, 3, 4, 4, 4, 5, 9] }

          it 'returns the sorted collection' do
            expect(described_class.sort(collection)).to eql(expected)
          end
        end

        context 'for an unsorted collection with negative values' do
          let(:collection) { [-4, 4, 2, 3, -2, 0, 1, 10, -1] }
          let(:expected) { [-4, -2, -1, 0, 1, 2, 3, 4, 10] }

          it 'returns the sorted collection' do
            expect(described_class.sort(collection)).to eql(expected)
          end
        end
      end
    end
  end
end
