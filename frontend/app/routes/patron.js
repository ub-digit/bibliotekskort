import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return Ember.RSVP.hash({ 
      patron: this.store.createRecord('patron', {
        personalnumber: '',
        categorycode: 'FC',
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
        mobile: '',
        email: '',
        accept_text: '',
      }),
      messagePref: this.get('store').findAll('message-pref'),
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
