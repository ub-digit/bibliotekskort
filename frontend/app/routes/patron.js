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
        B_address: '',
        B_address2: '',
        B_city: '',
        B_zipcode: '',
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
  },
  actions: {
    submit() {
      let model = this.controller.get('model.patron');
      var self = this;
      model.save().then((response) => {
        this.transitionTo('confirm');
      }, (error) => {
        this.get('controller').set('errors', error.errors);
        this.transitionTo('patron');
      });
    }
  }
});