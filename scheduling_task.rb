require 'date'

d = Date.parse('26th July 2019')
                             #=> #<Date: 2001-02-03 ...>
d.year                       #=> 2001
d.mon                        #=> 2
d.mday                       #=> 3
d.wday                       #=> 6
d += 1                       #=> #<Date: 2001-02-04 ...>
d.strftime('%a %d %b %Y')    #=> "Sun 04 Feb 2001"

#Given an array of dates and an array of bank holiday dates, increment a date by 1 if it falls on a bank holiday

#sample array of schedule dates
dates = [
  "21 October 2019",
  "1 November 2019",
  "12 November 2019",
  "18 November 2019",
  "21 November 2019",
  "17 December 2019",
  "27 December 2019",
  "2 January 2020",
  "8 January 2020",
  "28 January 2020"
]

#array of bank holiday dates
bank_holidays = [
  "25 December 2019",
  "26 December 2019",
  "1 January 2020"
]

#define a method which accepts two paramets, an array of dates and an array of bank holidays, and return an array of dates corrected for bank holidays
def holidayChecker(dates, bank_holidays)

end
