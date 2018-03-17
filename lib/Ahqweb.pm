package Ahqweb;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  #$self->plugin('PODRenderer');

  $self->config(hypnotoad => {listen => ['http://0.0.0.0:' . $ENV{PORT}]})
    if defined($ENV{PORT});

  # Router
  my $routes = $self->routes;

  my $r = $routes->under('/' => sub {
    # Redirect http->https behind a SSL-terminating proxy
    # Based on X-Forwarded-Proto only
    my $c = shift;
    return 1 if $c->req->headers->header('X-Forwarded-Proto') eq "https";
    $c->req->url->base->scheme('https');
    $c->redirect_to($c->req->url->to_abs);
    return undef;
  });

  # Normal route to controller
  $r->get('/')->to('home#welcome');
  
  $r->get('/contact')->to('contact#page');
  $r->get('/ssh-fingerprints')->to('fingerprints#page');
  
  $r->get('/projects/fluffy')->to('projects#fluffy');
  $r->get('/projects/gshis')->to('projects#gshis');
  
  $r->get('/holly/postfix')->to('holly#postfix');

  $r->get('/nixos/install')->to('nixos#install');
}

1;
