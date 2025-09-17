class PhoneBook
  def initialize
    # store entries as a hash: { name => { number: ..., listed: true/false } }
    @entries = {}
  end

  # Add a new entry
  def add(name, number, is_listed)
    @entries[name] = { number: number, listed: is_listed }
  end

  # Lookup a number by name (only if listed)
  def lookup(name)
    entry = @entries[name]
    return nil if entry.nil? || !entry[:listed]
    entry[:number]
  end

  # Lookup a name by number (only if listed)
  def lookupByNum(number)
    result = @entries.find { |name, entry| entry[:number] == number && entry[:listed] }
    result ? result[0] : nil
  end

  # Return all listed names with a given area code
  def namesByAc(areacode)
    @entries
      .select { |_, entry| entry[:listed] && entry[:number].start_with?(areacode) }
      .keys
  end
end
