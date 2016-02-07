Firebase = require 'firebase'

db = new Firebase "https://doc-fragments.firebaseio.com/"
titles = db.child "titles"

add = ({title, content}) =>
  # Store title in titles directory
  titles.push title

  # Store fragment object that includes title and content in fragments directory.
  # Calculate connection between title in titles and fragment in fragments
  # TODO: avoid titles duplicates

remove = () =>
  console.log "remove called"

change = () =>
  console.log "change called"

module.exports = {
  add
  remove
  change
}
