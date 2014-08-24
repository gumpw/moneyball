import calendar
import time

tt = time.strftime('%Y-%m-%d',time.localtime(time.time())).split("-")
year = tt[0]
month = tt[1]

def monthDays(year=int(year),month=int(month)):
    return calendar.monthcalendar(year,month)

print monthDays()
