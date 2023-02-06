use strict;

my $filename = @ARGV[0];

chomp(my $command1 = `git log --pretty=format:'%an %ae' -- $filename`);
chomp(my $command2 = `git log --pretty=format:'%H' -- $filename`);
chomp(my $command3 = `git show --pretty=format:'%b' -- $filename`);

print("Author: $command1\n");
print("\n");
print("SHA-1 for $filename: $command2\n");
print("\n");
print("Content of $filename: $command3\n"); 

