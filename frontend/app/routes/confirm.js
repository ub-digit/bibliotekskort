import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    // It is always the same (first) record since we only create one patron and then show the confirmation page.
    return this.store.peekRecord('patron', 1);
  }
});
