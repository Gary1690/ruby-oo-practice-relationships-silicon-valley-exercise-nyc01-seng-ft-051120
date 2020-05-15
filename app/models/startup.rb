require 'pry'
class Startup
     attr_reader :founder,:domain
    attr_accessor :name
    @@all =[]
    
     def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        Startup.all << self
    end

    def pivot(name, domain)
        @name = name
        @domain = domain
    end

    def self.all
        @@all
    end

    def self.find_by_founder(founder)
        self.all.find do |startup|
            startup.founder == founder
        end
    end

    def self.domains
        self.all.map do |startup|
            startup.domain
        end
    end

    def sign_contract(venture_capitalist, investment, type)
        FundingRound.new(self, venture_capitalist, investment, type)
    end

    def funding_rounds
        FundingRound.all.select do |fr|
            fr.startup == self
        end
    end

    def num_funding_rounds
        self.funding_rounds.length
    end

    def total_funds
        self.funding_rounds.reduce do |memo, frs|
            memo + frs.investment
        end
    end

    def investors
        self.funding_rounds.map do |frs|
            frs.investor
        end.uniq
    end

    def big_investors
        self.investors.tres_comma_club

        # self.investors.select do |investor|
        #     investor.tres_comma_club
       # end            
    end

    
end

 






