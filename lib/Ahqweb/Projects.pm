package Ahqweb::Projects;
use Mojo::Base 'Mojolicious::Controller';

sub gshis {
	my $self = shift;
	 $self->stash(page => 'projects/gshis');
}

sub fluffy {
	my $self = shift;
	 $self->stash(page => 'projects/fluffy');
}

1;
