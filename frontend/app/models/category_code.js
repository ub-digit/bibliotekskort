import DS from 'ember-data';
import Ember from 'ember';

export default DS.Model.extend({
  i18n: Ember.inject.service(),
  label_sv: DS.attr('string'),
  label_en: DS.attr('string'),
  label: Ember.computed('i18n.locale', function() {
    let lang = this.get('i18n.locale');

    return this.get('label_' + lang);
  })

});