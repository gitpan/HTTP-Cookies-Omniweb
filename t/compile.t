# $Id: compile.t,v 1.2 2004/09/17 18:09:44 comdog Exp $
BEGIN {
	@classes = qw( HTTP::Cookies::Omniweb );
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile" unless use_ok( $class );
	}

