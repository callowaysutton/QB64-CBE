SUB AryAddStr (Ary() AS STRING, value AS STRING) 'create new entry and return its index
IF LEN(Ary(0)) = 0 THEN Ary(0) = "0"
index = VAL(Ary(0)) + 1
lastIndex = UBOUND(Ary)
IF index > lastIndex THEN
    lastIndex = index * 2
    REDIM _PRESERVE Ary(lastIndex) AS STRING
END IF
Ary(0) = STR$(index)
Ary(index) = value
AryNewStr = index
END SUB

FUNCTION AryLastStr (Ary() AS STRING) 'get last used index or 0 if none used
IF LEN(Ary(0)) = 0 THEN Ary(0) = "0"
AryLastStr = VAL(Ary(0))
END FUNCTION

