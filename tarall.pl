#! /usr/bin/env perl
# perl scripts for unpack many .tar files

$DIR = "/media/iggcaslilong/DragonLi/Events_WDLC";

chdir($DIR);

@ISSUE = `ls -d *`;
print STDOUT "@ISSUE\n";

for($j = 0;$j < @ISSUE;$j++){
    $issue = $ISSUE[$j]; chomp($issue);
    print STDOUT "issue = $issue\n";
    if( -d $issue){
	chdir($issue);
	print STDOUT
"*************************************************************************\n";
	print STDOUT "changing to directory:$issue\n";
	print STDOUT
"*************************************************************************\n";
	
}

@STATION = `ls -d *.rar`;
print STDOUT "STATION = @STATION\n";
for($st = 0;$st < @STATION; $st++){
    $station = $STATION[$st]; chomp($station);
    print STDOUT "station = $station\n";
    `rar x $station`;
    `rm $station`;	
} 
chdir("..");
}
