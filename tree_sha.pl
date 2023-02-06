use strict;


my $input = @ARGV[0];

my $path = ".git/refs/heads/main";

my $command =`git cat-file -t $path`;

print("$input\n");

