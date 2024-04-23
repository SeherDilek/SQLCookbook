SELECT an1.a_name AS name1,
       an2.a_name AS name2,
       SOUNDEX(an1.a_name) AS Soundex_name
FROM author_name an1
JOIN author_name an2
ON (SOUNDEX(an1.a_name) = SOUNDEX(an2.a_name)
    AND an1.a_name = an2.a_name);