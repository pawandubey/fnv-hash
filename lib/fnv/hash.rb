require "fnv/hash/version"

module Fnv
  class Hash
    OFFSET_BASIS = {
      32 => 0x811c9dc5,
      64 => 0xcbf29ce484222325,
      128 => 0x6c62272e07bb014262b821756295c58d
    }

    PRIME = {
      32 => 16777619,
      64 => 1099511628211,
      128 => 309485009821345068724781371
    }

    MASK = {
      32 => 4294967295,
      64 => 18446744073709551615,
      128 => 340282366920938463463374607431768211455
    }

    # Calculates the FNV-1 hash for the given
    # item value
    #
    # @param item The item to hash
    # @param size [Integer] the size of the resulting hash
    #
    # @return [Integer] the calculated hash value
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

    # Calculates the FNV-1a hash for the given
    # item value
    #
    # @param item The item to hash
    # @param size [Integer] the size of the resulting hash
    #
    # @return [Integer] the calculated hash value
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
