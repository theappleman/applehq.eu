package Ahqweb;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');

  $self->config(hypnotoad => {listen => ['http://127.0.0.1:' . $ENV{PORT}]});

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('home#welcome');
  
  $r->get('/contact')->to('contact#page');
  $r->get('/ssh-fingerprints')->to('fingerprints#page');
  
  $r->get('/projects/fluffy')->to('projects#fluffy');
  $r->get('/projects/gshis')->to('projects#gshis');
  
  $r->get('/holly/postfix')->to('holly#postfix');
}

1;
