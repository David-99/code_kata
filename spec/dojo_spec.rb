require 'spec_helper'
require "dojo"

describe 'instantiate a node' do
  it 'returns an instance of node' do
    node = Node.new("This is the first node")
    expect(node).to be_kind_of(Node)
  end

  it 'contains a data property' do
    node = Node.new("This is the first node")
    expect(node.data).to eq("This is the first node")
  end

  it 'contains a pointer property' do
    node = Node.new("something")
    expect(node.pointer).to be_nil
  end
end

describe 'List' do
  let(:list) { List.new }

  describe '#head' do
    context 'when the list is empty' do
      it 'head points to nil' do
        expect(list.head).to be_nil
      end
    end

    context 'when the list has an arbitrary amount of nodes' do
      it 'always points to the initially loaded node' do
        node1 = Node.new("First")
        node2 = Node.new("Second")
        node3 = Node.new("Third")

        list.add(node1)
        list.add(node2)
        list.add(node3)

        expect(list.head.data).to eq("First")
      end
    end
  end

  describe '#add' do
    it 'adds a node to the list' do
      node1 = Node.new("First")
      list.add(node1)
      expect(list.all).to eq(["First"])
    end
  end

  describe '#all' do
    context 'when all is called on an empty list' do
      it 'returns an empty array' do
        expect(list.all).to eq([])
      end
    end

    context 'when all is called on an occupied list' do
      it 'returns an array of nodes in the list' do
        node1 = Node.new("First")
        node2 = Node.new("Second")

        list.add(node1)
        list.add(node2)
        expect(list.all).to eq(["First", "Second"])
      end
    end
  end
end
