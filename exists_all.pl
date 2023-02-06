use strict;

my $filename = @ARGV[0];
my $argLength = 1;
while($argLength -lt length(@ARGV)){
my $sha1 = @ARGV[$argLength];
if(`-f $filename`){
    if(length($sha1) -eq 40){
        
    }
}
}




