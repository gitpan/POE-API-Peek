
# Tests for session related api. see code block marked "Session fun".

use Test::More qw|no_plan|;

use warnings;
use strict;
use POE;
use Data::Dumper;

use_ok('POE::API::Peek');

my $api = POE::API::Peek->new();

POE::Session->create(
    inline_states => {
        _start => \&_start,
        _stop => \&_stop,

    },
    heap => { api => $api },
);

POE::Kernel->run();

###############################################

sub _start {
    my $sess = $_[SESSION];
    my $api = $_[HEAP]->{api};
    my $cur_sess;

    ok($api->is_kernel_running, "is_kernel_running() successfully reports that Kernel is in fact running.");
    is($api->active_event,'_start', "active_event() returns proper event name");


}


sub _stop {


}
