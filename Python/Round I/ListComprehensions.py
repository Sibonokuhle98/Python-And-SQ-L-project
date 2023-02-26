import datetime
import calendar


def compute_prev_date(dates_list: list) -> list:

    prev_dates = [datetime.datetime.strptime(date, "%Y-%m-%d") - datetime.timedelta(days=1) for date in dates_list]
    return [f"{prev_date.day:02d} {calendar.month_abbr[prev_date.month]} {prev_date.year}" for prev_date in prev_dates]
