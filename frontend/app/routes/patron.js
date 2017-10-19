import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return Ember.RSVP.hash({ 
      patron: this.store.createRecord('patron', {
        personalnumber: '',
        categorycode: 'FC',
        branchcode: 'test',
        surname: 'larsson',
        firstname: 'johan',
        address: 'testadress',
        address2: 'testadress2',
        zipcode: '12341423',
        city: 'Borås',
        B_address: 'B_address',
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
      model.save().then(() => {
        this.transitionTo('confirm');
      }, (error) => {
        this.get('controller').set('errors', error.errors);
        this.transitionTo('patron');
      });
    }
  }
});
