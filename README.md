# IELTS Academic Mock Test 1

A complete, self-contained IELTS Academic practice test built to the British Council computer-delivered format. No build step, no server, no dependencies: plain HTML, CSS and JavaScript.

## What is included

| Module | Format | Marking |
|---|---|---|
| Listening | 4 parts, 40 questions, 30 min audio + 10 min transfer | Automatic, converted to a band |
| Reading (Academic) | 3 passages, 40 questions, 60 minutes | Automatic, converted to a band |
| Writing | Task 1 (150 words) + Task 2 (250 words), 60 minutes | Self-assessed against the 4 official criteria |
| Speaking | Parts 1 to 3, 11 to 14 minutes | Self-assessed, with in-browser recording |

Features: countdown timers per module, a question palette showing answered and flagged questions, flag-for-review, autosave in the browser, instant answer key, full Listening transcripts released after submission, a word counter, an in-browser voice recorder, and a Test Report Form with the published raw-score to band tables.

## Listening audio

The audio is produced by the browser's own speech engine from the scripts in `data/listening.js`, so the test works offline with no media files. The voices are synthetic and more clearly articulated than real exam audio, which makes this test slightly easier than the real thing.

To use real recordings instead, drop MP3 files into an `audio/` folder and replace the player in `js/listening-page.js` with a standard `<audio>` element per part.

## Files

```
index.html            module selection and instructions
listening.html        Listening module
reading.html          Academic Reading module
writing.html          Writing module
speaking.html         Speaking module
results.html          Test Report Form and band tables
css/style.css         the whole stylesheet
js/engine.js          rendering, answer state, timer, marking, band conversion
js/*-page.js          one controller per module
data/listening.js     questions, answer key and transcripts
data/reading.js       passages, questions and answer key
data/writing-speaking.js  prompts, chart data and band descriptors
```

## Adding another test

Copy a file in `data/`, change the question content and the `answer` fields, and point a new page at it. The engine handles multiple choice, multiple answer, gap fill, dropdown matching, True/False/Not Given and Yes/No/Not Given without any changes.

Answer checking ignores case, surrounding punctuation, a leading article, and extra spaces. Alternative acceptable answers go in an array: `answer: ['thirty', '30']`.

## Privacy

Everything runs in the browser. Answers, essays and recordings are kept in `localStorage` on the device and are never uploaded. "Clear all my answers" on the home page removes them.

## Disclaimer

An independent practice resource built to the public IELTS format. Not affiliated with, or endorsed by, the British Council, IDP IELTS or Cambridge Assessment English. The passages, scripts and questions are original.
