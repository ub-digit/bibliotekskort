import Ember from 'ember';

export default Ember.Route.extend({
  i18n: Ember.inject.service(),

  beforeModel(transition) {
    this._super(...arguments);
    var lang = transition.queryParams.lang;
    if (lang) {
      this.set('i18n.locale', lang);
    }
    let locale = this.get('i18n.locale');
    document.documentElement.setAttribute('lang', locale || 'sv');
  },

  model() {
    return this.store.findAll('message-pref');
  },


  actions: {

  }
});
