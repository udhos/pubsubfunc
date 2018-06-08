/**
 * Triggered from a message on a Cloud Pub/Sub topic.
 *
 * @param {!Object} event The Cloud Functions event.
 * @param {!Function} The callback function.
 */
exports.budget = (event, callback) => {
  const pubsubMessage = event.data;

  console.log("data = ", Buffer.from(pubsubMessage.data, 'base64').toString());
  console.log("attributes = ", pubsubMessage.attributes);

  callback();
};
