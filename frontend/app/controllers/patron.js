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

  mobile_required: Ember.computed('model.patron.messaging_format', function() {
    let pr = this.get('model.patron.messaging_format');
    if (pr === 'sms_email' || pr === 'sms') return true;
    return false;
  }),

  email_required: Ember.computed('model.patron.messaging_format', function() {
    let pr = this.get('model.patron.messaging_format');
    if (pr === 'email' || pr === 'sms_email') return true;
    return false;
  }),
  actions: {
    selectMessagePref(value, event) {
      this.get("model.patron").set('messaging_format', value);
    },

    selectCategoryCode(value, event) {
      this.get("model.patron").set('categorycode', value);
    },

    selectLang(value, event) {
      this.get("model.patron").set('lang', value);
    }
  }
});