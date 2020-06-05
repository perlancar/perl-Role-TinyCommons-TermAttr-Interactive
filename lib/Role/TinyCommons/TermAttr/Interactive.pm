package Role::TinyCommons::TermAttr::Interactive;

# AUTHORITY
# DATE
# DIST
# VERSION

use Role::Tiny;

1;
# ABSTRACT: Determine whether terminal application is running interactively

=head1 DESCRIPTION


=head1 PROVIDED METHODS

=head2 termattr_interactive

Try to determine whether terminal application is running interactively. Will
first check the INTERACTIVE environment variable, then check using C<-t STDOUT>.


=head1 SEE ALSO

L<Role::TinyCommons>

L<Term::App::Role::Attrs>, an earlier project, uses L<Moo::Role>.
