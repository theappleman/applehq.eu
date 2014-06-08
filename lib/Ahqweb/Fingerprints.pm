package Ahqweb::Fingerprints;
use Mojo::Base 'Mojolicious::Controller';

sub page {
	my $self = shift;
	$self->stash(page => 'ssh-fingerprints');
}

1;