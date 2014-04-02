use strict;
use warnings;

use Dancer;

use benchmark;

use Plack::Builder;

my $app = sub {
    my $env     = shift;
    my $request = Dancer::Request->new(env => $env);
    
    Dancer->dance($request);
};

builder {
    $app;
};
