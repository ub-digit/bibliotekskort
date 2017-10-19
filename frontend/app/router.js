import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('form', { path: '/' });
  this.route('patron');
  this.route('confirm');
});

export default Router;
