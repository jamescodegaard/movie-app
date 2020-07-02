/* global axios */

axios.get("https://true-beaver-74732.herokuapp.com/api/actors").then(function (response) {
  var actors = response.data;
  console.log(actors);
});