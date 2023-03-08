use strict;


my $sha = @ARGV[0];


chomp(my @command =`git cat-file -p $sha`);

my $tree_sha;

foreach my $lines (@command){
    #This splits a line in two by the space.
    my @parts = split /[" "]/, $lines;
    #The second part which is the tree sha is stored in tree sha
    $tree_sha = $parts[1];
    #The loop is broken to avoid overwriting tree_sha
    last;
    }


print "$tree_sha\n";


