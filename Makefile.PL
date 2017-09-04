# flog - a MultiMarkdown-based static site/blog generator 

use strict;
use warnings;
use ExtUtils::MakeMaker;
use IO::File;

our $VERSION;
our $source = IO::File->new("< flog") or die "flog: $!";

while (defined(my $line = <$source>)) {
	if ($line =~ /^\$VERSION\s=\s'(.*)';/) {
		$VERSION = $1;
		last;
    }
}
$source->close();
die "flog: no VERSION!?" unless $VERSION;

sub SRC { "@_" }
sub DST { my $d = "@_"; $d =~ s,^lib/,,; '$(INST_LIBDIR)/'.$d }
sub PAIR { ( SRC(@_) => DST(@_) ) }

print STDERR "flog v.$VERSION\n";
WriteMakefile(
	AUTHOR => 'attila <attila@stalphonsos.com>',
	ABSTRACT => 'MultiMarkdown-based static site/blog generator',
	NAME => 'flog',
	VERSION => $VERSION,
	EXE_FILES => [ 'flog' ],
	PREREQ_PM => {
		'Modern::Perl' => 0,
		'Time::ParseDate' => 0,
	},
);
