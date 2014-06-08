package Ahqweb::Contact;
use Mojo::Base 'Mojolicious::Controller';

sub page {
	my $self = shift;
	$self->stash(page => 'contact');
}

1;