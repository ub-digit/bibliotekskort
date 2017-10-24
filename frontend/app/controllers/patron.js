import Ember from 'ember';

export default Ember.Controller.extend({
  terms_accepted: false,
  terms_accepted_changed: Ember.observer('terms_accepted', function() {
    if (this.get("terms_accepted")) {
      this.get("model.patron").set('accept_text', "Biblioteksreglerna accepteras");
      return;
    }
    // this will never happen
    this.get("model.patron").set('accept_text',"Biblioteksreglerna accepteras ej");
  }),


  actions: {
    selectMessagePref(value, event) {
      this.get("model.patron").set('message_pref', value);
    }
  }
});
