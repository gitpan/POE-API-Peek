
# Tests for event related code. See code block labeled "Event fun"

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

# event_count_to {{{
    my $to_count;
    eval { $to_count = $api->event_count_to() };
    ok(!$@, "event_count_to() causes no exceptions");
    is($to_count, 0, 'event_count_to() returns proper count');
# }}}

# event_count_from {{{
    my $from_count;
    eval { $from_count = $api->event_count_from() };
    ok(!$@, "event_count_from() causes no exceptions");
    is($from_count, 0, 'event_count_from() returns proper count');
# }}}

# event_queue {{{
    my $queue;
    eval { $queue = $api->event_queue() };
    ok(!$@, "event_queue() causes no exceptions");
    is(ref $queue, 'POE::Queue::Array', 'event_queue() returns POE::Queue::Array object');

# }}}
    
}


sub _stop {


}
