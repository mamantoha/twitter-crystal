module Twitter
  module Version
    Major = 0
    Minor = 2
    Patch = 1

    def self.to_s
      [Major, Minor, Patch].join('.')
    end
  end
end
