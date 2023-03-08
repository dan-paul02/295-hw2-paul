use strict;

my $filename = @ARGV[0];


chomp(my $command1 = `git cat-file --batch-check="$filename" --filters`);
print("$command1\n");


