// The cooperate decision is represented by 'C', the betray decision by 'B'
// This helper function reverses a decision
function flip(decision) {
  if (decision == 'C') return 'B';
  if (decision == 'B') return 'C';
  throw "Unknwon decision";
}


// --  Strategy generators ------------------------------------------------------

// stragegy that always cooperates
function* nice() {
  while (true) yield 'C';
}

// stragegy that always betrays
function* evil() {
  while (true) yield 'B';
}

// strategy that starts by cooperating, then betrays, then cooperates, etc.
function* alternate() {
  let next = 'C';
  while (true) {
    let other = yield next;
    next = flip(next); // ignore what other did, just flip
  }
}

// strategy that starts with betraying, then does the opposite of what
// the other prisoner did
function* disagree() {
  let next = 'B';
  while (true) {
    let other = yield next;
    next = flip(other);
  }
}

// strategy that flips coins for either betray or cooperate
function* flipCoin() {
  while(true) {
    let r = Math.floor(Math.random() * Math.floor(2));
    if (r == 0) {
      yield 'B';
    } else {
      yield 'C';
    }
  }
}

// strategy that starts with cooperating, then doing the same as the other.
// opposite  of disagree
function* agree() {
  let next = 'C';
  while(true) {
    let other = yield next;
    next = other;
  }
}

// look back at previous results to guess what the other will do, then do
// what is most likey to give least amount of years both. Default is cooperate.
// starts at 1 to avoid arithmetic execption
function* lookBack() {
  let nr_betrays = 1;
  let nr_cooperates = 1;
  let iterations = 0;
  let next = 'C';
  while(true) {
    let other = yield next;

    if (other == 'C') {
      nr_cooperates++;
    } else {
      nr_betrays++;
    }

    let prob_betray = (nr_betrays/(nr_betrays+nr_cooperates)) * 100;
    let prob_cooperate = (nr_cooperates/(nr_betrays+nr_cooperates)) * 100;

    if(prob_betray == prob_cooperate) {
      next = 'C';

    } else if (prob_betray > prob_cooperate) {
      next = 'B';
    } else {
      next = 'C';
    }
  }
}
// -----------------------------------------------------------------------------

// penalty function different scenarios
function score(a, b) {
  if (a == 'C' && b == 'C') return [1, 1];
  if (a == 'C' && b == 'B') return [5, 0];
  if (a == 'B' && b == 'C') return [0, 5];
  if (a == 'B' && b == 'B') return [3, 3];
  throw "invalid inputs to score";
}

// global array of strategies, with accumulated scores
let strategies = [
  { st: nice, score: 0 },
  { st: evil, score: 0 },
  { st: alternate, score: 0 },
  { st: disagree, score: 0 },
  { st: flipCoin, score: 0},
  { st: agree, score: 0},
  { st: lookBack, score: 0}
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
