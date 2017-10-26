import Ember from 'ember';

export default Ember.Controller.extend({
  terms_accepted: false,
  terms_accepted_changed: Ember.observer('terms_accepted', function() {
    if (this.get("terms_accepted")) {
      this.get("model.patron").set('accept_text', "Biblioteksreglerna accepteras");
      return;
    }
    // this will never happen
    this.get("model.patron").set('accept_text', "Biblioteksreglerna accepteras ej");
  }),

  mobile_required: Ember.computed('model.patron.message_pref', function() {
    let pr = this.get('model.patron.message_pref');
    if (pr == 2 || pr == 3) return true;
    return false;
  }),

  email_required: Ember.computed('model.patron.message_pref', function() {
    let pr = this.get('model.patron.message_pref');
    if (pr == 1 || pr == 2) return true;
    return false;
  }),
  actions: {
    selectMessagePref(value, event) {
      this.get("model.patron").set('message_pref', value);
    },

    selectCategoryCode(value, event) {
      this.get("model.patron").set('categorycode', value);
    }
  }
});