require 'date'

# d = Date.parse('26th July 2019')
#                              #=> #<Date: 2001-02-03 ...>
# puts d.year                       #=> 2001
# d.mon                        #=> 2
# d.mday                       #=> 3
# d.wday                       #=> 6
# d += 1                       #=> #<Date: 2001-02-04 ...>
# d.strftime('%a %d %b %Y')    #=> "Sun 04 Feb 2001"

#Given an array of dates and an array of bank holiday dates, increment a date by 1 if it falls on a bank holiday

#array of random schedule dates
dates = [
  '6 July 2019',
  '21 October 2019',
  '1 November 2019',
  '12 November 2019',
  '18 November 2019',
  '21 November 2019',
  '17 December 2019',
  '26 December 2019',
  '1 January 2020',
  '8 January 2020',
  '28 January 2020'
]

#array of bank holiday dates
bank_holidays = [
  '25 December 2019',
  '26 December 2019',
  '1 January 2020'
]

#define a method which parses data from an array
def parseDates(array)
  #create array to hold the parsed dates
  parsed_dates = []
  #parse dates into ruby datetime format
  dates.each do |date|
    parsed_date = Date.parse(date)
    parsed_dates.push(parsed_date)
  end
end

#define a method which accepts two paramets, an array of dates and an array of bank holidays, and return an array of dates corrected for bank holidays
def holidayChecker(dates, bank_holidays)
  #parse dates array
  dates = parseDates(dates)
  #parse bank holidays array
  bank_holidays = parseDates(bank_holidays)

  parsed_dates.each do |date|
    if bank_holidays.include?(date)
      puts "#{date} is a bank holiday!"
    end
  end

  #for each date, check...
    #does the date fall on a weekend?
  parsed_dates.each do |date|
    if date.wday == 6
      date += 2
    elsif date.wday == 7
      date += 1
    else
      puts "It's a weekday."
    end

  end

end

holidayChecker(dates, bank_holidays)
