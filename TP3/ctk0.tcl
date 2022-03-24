#!/bin/sh
# \
exec tclsh "$0" -- "$@"


# generates token ring for n sites
# usage mtk  n  > tkn.net 


proc main {} {
    global argv
    if {"" == [set n [lindex $argv 1]]} {set n 1}
    puts "net \{tokenring $n\}"
    puts "pl token_1(1)"  
    for {set i 1} {$i <= $n} {incr i} {
         puts "pl idle_${i}(1)"
    }
    for {set i 1} {$i <= $n} {incr i} {

      ## Client
        puts "tr ${i}_ask idle_${i} -> wait_${i}"
        puts "tr ${i}_work wait_${i} -> cs_${i}"
        puts "tr ${i}_rel cs_${i} -> idle_${i}"

      ## Station
           ## Interactions avec le client 
        puts "tr ${i}_work  token_${i} -> "
        puts "tr ${i}_rel  -> token_${i}"
           ## Interactions avec les autres stations
        puts "tr ${i}_exit  token_${i} ->  after_${i}"
    }
    for {set i 1} {$i < $n} {incr i} {
        puts "tr [expr $i +1]_entry after_${i} -> token_[expr $i +1]"
    }
    puts "tr 1_entry after_${n} -> token_1"  
    
}
main 
