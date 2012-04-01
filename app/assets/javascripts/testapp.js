//(function() {
App = Ember.Application.create();
App.personController = Ember.Object.create({
  firstName: 'Alan',
  lastName: 'Turing',

  fullName: function() {
    return this.get('firstName') + ' ' + this.get('lastName');
  }.property('firstName', 'lastName'),

  didRSVP: false
});
//})();