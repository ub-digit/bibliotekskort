import Ember from 'ember';

export default Ember.Route.extend({
  i18n: Ember.inject.service(),

  activate() {
    this._super(...arguments);
    document.title = this.get('i18n').t('confirm.header');
  },

  model(params) {
    // It is always the same (first) record since we only create one patron and then show the confirmation page.
    return this.store.peekRecord('patron', 1);
  }
});
