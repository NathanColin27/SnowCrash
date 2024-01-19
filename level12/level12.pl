#!/usr/bin/env perl
# localhost:4646
use CGI qw{param};
print "Content-type: text/html\n\n";

sub t {

  $nn = $_[1];# y param
  $xx = $_[0];# x param
  $xx =~ tr/a-z/A-Z/; # puts x in uppercase
  $xx =~ s/\s.*//; # substitute all whitespaces and following characters by nothing ("Hello World" -> "Hello")
  @output = `egrep "^$xx" /tmp/xd 2>&1`;
  foreach $line (@output) {
      ($f, $s) = split(/:/, $line);
      if($s =~ $nn) {
          return 1;
      }
  }
  return 0;
}

sub n {
  if($_[0] == 1) {
      print("..");
  } else {
      print(".");
  }    
}

n(t(param("x"), param("y")));