// --  Strategy generators ------------------------------------------------------
function* rockOnly() {
  while(true) {
    yield 'R';
  }
}

function* paperOnly() {
  while(true) {
    yield 'P';
  }
}
function* scissorOnly() {
  while(true) {
    yield 'S';
  }
}
//simply rotate through all the different options, starting with rock
function* simpleRotation() {
  let options = ['R', 'P', 'S'];
  let i = Math.floor(Math.random() * Math.floor(3));
  while(true) {
    yield options[i%3];
    i++;
  }
}
// randomly select any option
function* randomSelect() {

  let options = ['R', 'S', 'P'];
  while(true) {
    let r = Math.floor(Math.random() * Math.floor(3));
    yield options[r];
  }
}

// heper function to equalRandom
function randomSelectNotHighest(options_dict) {
  let r = Math.floor(Math.random() * Math.floor(Object.keys(options_dict).length));
  let randomValue = options_dict[r];
  var options = Object.keys(options_dict);

  for(var i = 0; i < options.length; i++) {
    if (options_dict[options[i]] < randomValue) {
      return options[i];
    }
  }
  return options[r];
}
// continuously select randomly between the options that have not not been played
// the highest amount of times.
function* equalRandom() {

  let options_dict = {'R':0, 'S':0, 'P':0};

  while(true) {

    let choice = yield randomSelectNotHighest(options_dict);
    ++options_dict[choice];
  }
}
// helper function to predictAndCounter
function getHighest(r, p, s) {
  if (r >= p && r >= s) return r;
  if (p >= r && p >= s) return p;
  if (s >= r && s >= p) return s;
}
// count the number of times the opponent choses the different options, then
// select the counteroption to the one with the highest number
// First time is selected at random
function* predictAndCounter() {
  let options = ['R', 'P', 'S'];
  let nr_r = 0;
  let nr_p = 0;
  let nr_s = 0;

  let next = options[Math.floor(Math.random() * Math.floor(3))];
  while(true) {
    let other = yield next;
    if (other == 'R') {
      nr_r++;
    } else if (other == 'S') {
      nr_s++;
    } else if (other == 'P') {
      nr_p++;
    }

    let highest = getHighest(nr_r, nr_p, nr_s);

    if(highest == nr_r) next = 'P';
    if(highest == nr_p) next = 'S';
    if(highest == nr_s) next = 'R';

  }
}


// -----------------------------------------------------------------------------

// penalty function different scenarios
function score(a, b) {
  if (a == 'P' && b == 'R') return [1, 0];
  if (a == 'R' && b == 'P') return [0, 1];
  if (a == 'S' && b == 'P') return [1, 0];
  if (a == 'P' && b == 'S') return [0, 1];
  if (a == 'R' && b == 'S') return [1, 0];
  if (a == 'S' && b == 'R') return [0, 1];
  if (a==b) return [0, 0];
  throw "invalid inputs to score";
}

// global array of strategies, with accumulated scores
let strategies = [
  { st: rockOnly, score: 0 },
  { st: paperOnly, score: 0 },
  { st: scissorOnly, score: 0 },
  { st: simpleRotation, score: 0 },
  { st: randomSelect, score: 0 },
  { st: equalRandom, score: 0},
  { st: predictAndCounter, score: 0}
];

// a comparison function that is used for sorting strategies
function compareScores(sa, sb) {
  if (sa.score < sb.score) return -1;
  if (sa.score > sb.score) return 1;
  return 0;
}

function sortStrategies(strategies) {
  let strats = strategies.slice(); // copy
  strats.sort(compareScores); // sort by score
  return strats;
}

function resetScores(strategies) {
  for (let s of strategies) s.score = 0;
}

// a generator that given an array of strategies,
// yields all possible pairs of strategies
function* strategyPairs(strategies) {
  for (let i = 0; i < strategies.length; ++i) {
    for (let j = i; j < strategies.length; ++j) {
      yield [strategies[i], strategies[j]];
    }
  }
}

// Helper function to prime a generator function.  The first argument
// is the generator function, the rest of the arguments are what
// should be passed to the the generator function.  The result is a
// coroutine, that can be called to yield the next value.
function prime(generator, ...args) {
  let primed = generator(...args);
  return (v => primed.next(v));
}

// Run 10000 rounds of the game with strategies sa and sb
// Return accumulated scores
function simulate(sa, sb) {
  let aprev = undefined, ascore = 0;
  let bprev = undefined, bscore = 0;

  let coa = prime(sa), cob = prime(sb); // prime coroutines

  for (let i = 0; i<10000; ++i) {
    let a = coa(bprev), b = cob(aprev);
    let [as, bs] = score(a.value, b.value);
    ascore += as; bscore += bs;
    aprev = a.value; bprev = b.value;
  }
  return [ascore, bscore];
}

// Display results of a tournament

function displayResults(strategies) {
  let resultList = document.getElementById("result-list");

  // remove possilbe old results
  while (resultList.firstChild) resultList.removeChild(resultList.firstChild);

  for (let s of strategies) {
    let item = document.createElement('li');
    item.appendChild(document.createTextNode(s.st.name + ": " + s.score));
    resultList.appendChild(item);
  }
}

// run when the page has loaded
window.onload = () => {
  let aStratBox = document.getElementById('A-strategy');
  let bStratBox = document.getElementById('B-strategy');

  let aScoreBox = document.getElementById('A');
  let bScoreBox = document.getElementById('B');

  let nextButton = document.getElementById('next');
  let compareAllButton = document.getElementById('compare-all');

  let sp = prime(strategyPairs, strategies);

  // Clicking next iterates over all possible strategy pairs and shows the scores
  nextButton.addEventListener("click", () => {

    let r = sp();
    if (r.done) { displayResults(strategies); return; }

    let [sa, sb] = r.value;

    aStratBox.value = sa.st.name;
    bStratBox.value = sb.st.name;

    let [ascore, bscore] = simulate(sa.st, sb.st);
    sa.score += ascore; sb.score += bscore;

    aScoreBox.value = ascore;
    bScoreBox.value = bscore;
  });

  // Clicking compareAll runs a tournament between all pairs and reports results

  compareAllButton.addEventListener("click", () => {
    let strats = strategies.slice(); // copy the global strategies
    resetScores(strats);
    let sp = prime(strategyPairs, strats);
    while (true) {
      let r = sp();
      if (r.done) break;

      let [sa, sb] = r.value;
      let [ascore, bscore] = simulate(sa.st, sb.st);
      sa.score += ascore; sb.score += bscore;
    }
    displayResults(sortStrategies(strategies));
  });
};
