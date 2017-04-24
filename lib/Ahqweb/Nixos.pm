package Ahqweb::Nixos;

use Mojo::Base 'Mojolicious::Controller';

sub install {
    my $self = shift;
    $self->stash(page => 'nixos/install');
}

1;
