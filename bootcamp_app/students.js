const { Pool } = require('pg');

const pool = new Pool({
  user: '/',
  password: '/',
  host: '/',
  database: '/'
});


pool.query(`
SELECT students.id AS student_id, students.name AS name, cohorts.name AS cohort
FROM students
JOIN cohorts
  ON students.cohort_id = cohorts.id
LIMIT 5;
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));




// // .then(res => {
// //   console.log(res.rows);
// // })
