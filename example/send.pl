#! /usr/bin/env perl

use strict;
use warnings;

use SMS::Send;

# Create a sender
my $sender = SMS::Send->new(
    'Iletimerkezi',
    _api_key     => '_your_iletimerkezi_api_key_',
    _api_secret  => '_your_iletimerkezi_api_secret_',
    _sender      => 'ILT MRKZ',
    _encoding    => '',
);

# Send a message
my $sent = $sender->send_sms(
    text => 'This is a test message',
    to   => '+905321112233',
);

if ($sent) {
    print "Message sent ok\n";
}
else {
    print "Failed to send message\n";
}