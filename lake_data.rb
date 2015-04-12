require 'httparty'

class LakeData
  def initialize(url)
    @response = HTTParty.get(url)

    @mean_air_temp = 0
    @mean_barometric_pressure = 0
    @mean_dew_point = 0
    @mean_relative_humidity = 0
    @mean_wind_dir = 0
    @mean_wind_gust = 0
    @mean_wind_speed = 0

    @median_air_temp  = 0
    @median_barometric_pressure  = 0
    @median_dew_point = 0
    @median_relative_humidity = 0
    @median_wind_dir = 0
    @median_wind_gust = 0
    @median_wind_speed = 0

    @means = [@mean_air_temp, @mean_barometric_pressure, @mean_dew_point, @mean_relative_humidity, @mean_wind_dir, @mean_wind_gust, @mean_wind_speed]
    @medians = [@median_air_temp, @median_barometric_pressure, @median_dew_point, @median_relative_humidity, @median_wind_dir, @median_wind_gust, @median_wind_speed]
  end

  def run_program
    parse_response
    mean
    @lines_length.even? ? median_for_even : median_for_odd
    print_result
  end

  private

    def parse_response
      @lines = @response.split("\n")
      @header = @lines.shift.split(" ")
      @header.delete_at(1)
      # @lines = @lines[1..4]
      @lines_length = @lines.length
      @lines.map! { |line| line.split("\t") }
    end

    def mean
      @lines.each do |line|
        @means.map!.with_index(1) { |elmt, i| elmt += line[i].to_f }
      end
      @means.map! {|mean| (mean / @lines.length).round(2)}
    end

    def median_for_even
      @medians.map!.with_index(1) do |elmt, i|
        @lines.sort! { |a, b| a[i] <=> b[i] }
        # @lines.each_with_index {|line, i| puts "#{i}. #{line}"}
        elmt = (((@lines[@lines_length / 2 - 1][i].to_f) + (@lines[@lines_length / 2][i].to_f)) / 2).round(2)
      end
    end

    def median_for_odd
      @medians.map!.with_index(1) do |elmt, i|
        elmt = @lines[@lines_length/2][i]
        # @lines.each_with_index {|line, i| puts "#{i}. #{line}"}
      end
    end

    def print_result
      @lines.each_with_index {|line, i| puts "#{i}. #{line}"}
      puts
      @means.each_with_index { |mean, i| p "Mean #{@header[i+1].gsub("_"," ")}: #{mean}" }
      puts
      @medians.each_with_index {|median, i| p "Median #{@header[i+1].gsub("_"," ")}: #{median}"}
    end
end

test = LakeData.new('http://lpo.dt.navy.mil/data/DM/Environmental_Data_Deep_Moor_2015.txt')
test.run_program