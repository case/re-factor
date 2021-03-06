! Copyright (C) 2008 John Benediktsson
! See http://factorcode.org/license.txt for BSD license

USING: kernel morse prettyprint sequences unicode.case
unicode.categories ;

IN: palindrome

: normalize ( str -- str' ) [ Letter? ] filter >lower ;

: palindrome? ( str -- ? ) normalize dup reverse = ;

: main ( -- ) "racecar" palindrome? . ;

: normalize-morse ( str -- str' )
    normalize >morse [ blank? not ] filter ;

: morse-palindrome? ( str -- ? )
    normalize-morse dup reverse = ;

MAIN: main

