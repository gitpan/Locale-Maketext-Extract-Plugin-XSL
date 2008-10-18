#!/usr/bin/perl

use Test::More tests => 4;

BEGIN {
    use_ok( 'Locale::Maketext::Extract::Plugin::XSL' );
    use_ok( 'Locale::Maketext::Extract' );
}

use FindBin;

my $ext = Locale::Maketext::Extract->new( plugins => {'Locale::Maketext::Extract::Plugin::XSL' => '*'} );
ok($ext->extract_file($FindBin::Bin.'/i18ntest.xsl'),'extracting from i18ntest.xsl');
$ext->compile();
is( join('',%{$ext->lexicon()}), "Could not retrieve Object '%1'.", 'extracted key matches' );
