use strict;

my $root = $ARGV[0];
my $sha1Input = $ARGV[1];

my $typeOfSha1;
if(length($sha1Input) < 2 or length($sha1Input) > 40){
    print "$sha1Input is either too long or too short to be a valid sha!";
}
else{
    if(`git cat-file -e $sha1Input` == 0){
        chomp($typeOfSha1 = `git cat-file -t $sha1Input`);
        if($typeOfSha1 ne "commit"){
            print "$sha1Input is a $typeOfSha1 object, not a commit object.";  
        }
        else{
            print "True";
        }

    }   
    else{
        print "$sha1Input does not represent a valid Git object";
    }
}












