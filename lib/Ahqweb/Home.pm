package Ahqweb::Home;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub welcome {
  my $self = shift;
  
  $self->stash(page => 'home');

  # Render template "home/welcome.html.ep" with message
  $self->render(
    message => 'Welcome to my website!');
}

1;
