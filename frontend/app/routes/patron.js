import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return Ember.RSVP.hash({
      patron: this.store.createRecord('patron', {
        personalnumber: '',
        categorycode: '',
        branchcode: '',
        surname: '',
        firstname: '',
        address: '',
        address2: '',
        zipcode: '',
        city: '',
        phone: '',
        smsalertnumber: '',
        email: '',
        accept_text: '',
        lang: '',
        messaging_format: 'email' // defaults to email
      }),
      messagePref: this.get('store').findAll('message-pref'),
      categoryCodes: this.get('store').findAll('category-code')

    });
  },
  setupController(controller, model) {
    controller.set('model', model);
    controller.set('terms_accepted', false);
    controller.send('selectLang', controller.get("i18n.locale"));
    controller.get("errors", null);
  },
  actions: {
    submit() {
      let model = this.controller.get('model.patron');
      model.save().then(() => {
        this.transitionTo('confirm');
      }, (error) => {
        this.get('controller').set('errors', error.errors);
        this.transitionTo('patron');
      });
    }
  }
});