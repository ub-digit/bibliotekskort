import ActiveModelAdapter from 'active-model-adapter';
import ENV from '../config/environment';

export default ActiveModelAdapter.extend({
  namespace: 'api',
  host: ENV.APP.serviceURL,

  handleResponse(status, header, payload) {
    if (404 === status) {
      return {
        status: "404",
        errors: payload.errors
      };
    }

    if (499 === status) {
      return {
        status: "499",
        errors: payload.errors
      };
    }

    if (403 === status) {
      return {
        status: "403",
        errors: payload.errors
      };
    }
    return this._super(...arguments);
  }
});
