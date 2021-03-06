start:-
 hypothesis(Career),
 write('Your Best career option based on our evaluation is: '),
 nl,
 write(Career),
 nl,
 write('All the best'),
 undo.

/*Hypothesis that should be tested*/
hypothesis(engineer) :- engineer, !.
hypothesis(artist) :- artist, !.
hypothesis(actor) :- actor, !.
hypothesis(doctor) :- doctor, !.
hypothesis(itspecialist) :- itspecialist, !.
hypothesis(teacher) :- teacher, !.
hypothesis(unknown).





engineer:-
    verify(love_math),
    verify(innovative ),
    verify(done_physics),
    verify(enjoys_reading_alot),
    verify(are_fascinated_by_good_designs),
    write('Piece of advice'),
    nl,
    write('Work hard'),
    nl.
artist:-
    verify(have_talent_in_drawing),
    verify(creative),
    verify(done_art_course),
    verify(free_spirited),

    write('Piece of advice'),
    nl,
    write('practise alot'),
    nl.
actor:-
    verify(can_write_scripts),
    verify(can_cry_on_cue),
    verify(done_theatre_art_course),
    verify(peoples_person),

    write('Piece of advice'),
    nl,
    write('Practise alot and be confident'),
    nl.


doctor :-
    verify(kind),
    verify(has_a_passion_for_medicine),
    verify(does_not_long_hours_of_work),
    verify(does_not_drink),
    verify(enjoys_reading_books),
    verify(not_put_off_with_surgery),
    write('Piece of advice'),
    nl,
    write('Put alot of your time in books'),
    nl.
itspecialist:-
    verify(have_a_passion_for_coding),
    verify(done_computer_in_highschool),
    verify(creative),
    verify(innovative),
    verify(good_at_designing),
    write('Piece of advice'),
    nl,
    write('Practise alot'),
    nl.
teacher :-
    verify(like_teaching_others),
    verify(strong_in_instilling_discipline),
    verify(enjoys_school_setting),
     verify(strong_soft_skills_and_communication_skills),
     verify(confident),

    write('Piece of advise'),
    nl,
    write('Work hard'),
    nl.
/*Asking questions*/
ask(Question) :-
    write('Do you relate with any of the following traits and interests : '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
    ->
    assert(yes(Question)) ;
    assert(no(Question)),fail).

:- dynamic yes/1,no/1.

/*Verification*/
verify(S) :-
(yes(S)
->
true ;
(no(S)
->
fail ;
ask(S))).

/*Undo the yes/no answers*/
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.



