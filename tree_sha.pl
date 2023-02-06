use strict;


my $sha = @ARGV[0];

my $path = ".git/refs/heads/main";

chomp(my $command =`git cat-file -t $sha`);

print $command;


