package Role::TinyCommons::TermAttr::Interactive;

# AUTHORITY
# DATE
# DIST
# VERSION

use Role::Tiny;

sub termattr_interactive {
    my $self = shift;
    if (defined $ENV{INTERACTIVE}) {
        $self->{_termattr_debug_info}{interactive_from} = 'INTERACTIVE env';
        return $ENV{INTERACTIVE};
    } else {
        $self->{_termattr_debug_info}{interactive_from} = '-t STDOUT';
        return (-t STDOUT);
    }
}

1;
# ABSTRACT: Determine whether terminal application is running interactively

=head1 DESCRIPTION


=head1 PROVIDED METHODS

=head2 termattr_interactive

Try to determine whether terminal application is running interactively. Will
first check the INTERACTIVE environment variable, then check using C<-t STDOUT>.


=head1 ENVIRONMENT

=head2 INTERACTIVE


=head1 SEE ALSO

L<Role::TinyCommons>

L<Term::App::Role::Attrs>, an earlier project, uses L<Moo::Role>.
