SELECT DATE_ADD(CURRENT_DATE, INTERVAL -DAY(CURRENT_DATE) + 1 DAY) firstday,
    LAST_DAY(CURRENT_DATE) lastday;