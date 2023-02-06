use strict;

my $filename = @ARGV[0];

chomp(my $authorName = `git log --pretty=format:'%an' -- $filename`);
chomp(my $authorEmail = `git log --pretty=format:'%ae' -- $filename`);
chomp(my $commitCount = `git shortlog -sn --all -- $filename`);
chomp(my $firstCommit = `git log --pretty=format:'%ad' --author $authorName | tail -1 -- $filename`);
chomp(my $recentCount = `git log --pretty=format:'%ad' --author $authorName | head -1 -- $filename`);

print($authorEmail, " ", $commitCount, " ",$firstCommit, " ", $recentCount);
