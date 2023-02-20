use strict;


my $sha = @ARGV[0];


chomp(my $command =`git rev-parse $sha^{tree}`);

print "$command\n";


