require "fnv/hash/version"

module Fnv
  module Hash
    OFFSET_BASIS = { 32 => 0x811c9dc5, 64 => 0xcbf29ce484222325 }
    PRIME = { 32 => 16777619, 64 => 1099511628211 }
    MASK = { 32 => 4294967295, 64 => 18446744073709551615 }

    def self.fnv_1(item, size: 32)
      offset_basis = OFFSET_BASIS.fetch(size)
      prime = PRIME.fetch(size)

      hash = offset_basis
      item.to_s.each_byte do |byte|
        hash *= prime
        hash &= MASK.fetch(size)
        hash ^= byte
      end

      hash
    end

    def self.fnv_1a(item, size: 32)
      offset_basis = OFFSET_BASIS.fetch(size)
      prime = PRIME.fetch(size)

      hash = offset_basis
      item.to_s.each_byte do |byte|
        hash ^= byte
        hash *= prime
        hash &= MASK.fetch(size)
      end

      hash
    end
  end
end
