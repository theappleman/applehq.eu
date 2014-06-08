package Ahqweb::Holly;
use Mojo::Base 'Mojolicious::Controller';

sub postfix {
	my $self = shift;
	$self->stash(page => 'holly/postfix');
}

1;
