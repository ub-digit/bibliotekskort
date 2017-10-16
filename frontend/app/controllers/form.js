import Ember from 'ember';

export default Ember.Controller.extend({
  methods: Ember.computed('lang', function() {
    return [{
        'method': 'Epost',
        'value': 1
      },
      {
        'method': 'SMS och epost',
        'value': 3
      },
      {
        'method': 'Bara SMS',
        'value': 2
      },
      {
        'method': 'Brev till adress',
        'value': 0
      }
    ];
  }),

  validateForm: Ember.computed('', function() {

  }),

});