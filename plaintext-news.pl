#!/usr/bin/perl
use strict;
use warnings;

=begin
Plaintext news scraper
By Rodrigue "Rosco" GASPARD
=cut

my $website_url = "https://www.lemonde.fr/";
my $curl_output = `curl -s $website_url` ;
my @links;
while($curl_output =~ /<a[^>]+class="top-article__wrapper"[^>]href="(.*?)">/g) {
	push @links, $1;
}

foreach my $link (@links) {
	print "$link\n";
}

