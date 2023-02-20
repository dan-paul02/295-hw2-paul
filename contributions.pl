use strict;

my $filename = @ARGV[0];

chomp(my $authorName = `git log --pretty=format:'%an' -- $filename`);
chomp(my $authorEmail = `git log --pretty=format:'%ae' -- $filename`);
chomp(my $commitCount = `git shortlog -sn --all -- $filename`);
chomp(my $firstCommit = `git log --pretty=format:'%ad' --author $authorName -- $filename -1`);
chomp(my $recentCount = `git log --pretty=format:'%ad' --author $authorName -- $filename -1`);

print($authorEmail, ",", $commitCount, ",",$firstCommit, ",", $recentCount);

