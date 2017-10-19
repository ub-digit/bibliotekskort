import Ember from 'ember';

export default Ember.Controller.extend({
  terms_accepted: false,
  actions: {
    selectMessagePref(value, event) {
      this.get("model.patron").set('message_pref', value);
    }
  }

});
