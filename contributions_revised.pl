use strict;

my $filename = @ARGV[0];



chomp(my @command =`git cat-file -p $filename`);

print "@command";


