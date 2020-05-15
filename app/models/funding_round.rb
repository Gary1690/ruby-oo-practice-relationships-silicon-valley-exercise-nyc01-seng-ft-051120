class FundingRound
    attr_accessor :type, :investment
    attr_reader :startup, :venture_capitalist
    @@all = []

    def initialize(startup, venture_capitalist, investment, type)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment.to_f
        FundingRound.all << self
    end

    def self.all
        @@all
    end

    # def investment=(investment)
    #     if investment > 0
    #         @investment = investment.to_f
    #     else
    #         "This is not a valid amount."
    #     end
    # end

end
