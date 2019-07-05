require 'date'
#array of random schedule dates
dates = [
  '6 July 2019',
  '7 July 2019',
  '17 December 2019',
  '25 December 2019',
  '1 January 2020',
  '8 January 2020'
]
#array of random bank holiday dates
bank_holidays = [
  '25 December 2019',
  '26 December 2019',
  '1 January 2020'
]
#define a method which parses data from an array of dates into ruby datetime format
def parseDates(array)
  parsed_dates = [] #create epmty array to hold the parsed dates
  array.each do |date| #for each string in the array...
    parsed_date = Date.parse(date) #parse the date
    parsed_dates.push(parsed_date) #push the parsed date onto the new parsed_dates array
  end
  parsed_dates
end

#define a method which accepts two paramets, an array of dates and an array of bank holidays, and returns an array of dates corrected for bank holidays
def holidayChecker(dates, bank_holidays)
  dates = parseDates(dates) #parse dates array
  bank_holidays = parseDates(bank_holidays) #parse bank holidays array
  corrected_schedule = []
  dates.each do |date|
    while date.wday == 6 || date.wday == 7 || bank_holidays.include?(date) #while the date is either a bank holiday OR a Saturday OR a Sunday...
      date += 1
    end
    corrected_schedule.push(date)
  end
  puts corrected_schedule
end

holidayChecker(dates, bank_holidays)
