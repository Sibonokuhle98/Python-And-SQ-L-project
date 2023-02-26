import re

def is_date_format_correct(date: str) -> bool:
    pattern = r'^\d{4}-\d{2}-\d{2}$'
    return bool (re.match(pattern,date))
