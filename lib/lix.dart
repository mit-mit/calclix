// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class LixCounts {
  // Based on:
  // https://readabilityformulas.com/the-LIX-readability-formula.php.
  int words; // Number of words in general.
  int longWords; // Number of words with more than 6 characters.
  int periods; // Number of periods.

  // TIP: Because the fields are all non-nullable, the constructor must
  // initialize them all. We can either set a default value, or like here make
  // the fields 'required', meaning that a value must be passed to the
  // constructor.
  LixCounts({
    required this.words,
    required this.longWords,
    required this.periods,
  });

  // TIP: Notice how we declare a non-nullable uninitalized `result` variable,
  // yet we can return is as a non-nullable result without getting an error.
  //
  // This is possible due to "definete assignement": We determine that a value
  // has definetely been assigned before we return. Try removing the assignment
  // to `result` in our of the if/else code branches, and notice how an error
  // then appears in the return statement.
  int lix() {
    int result;

    if (words == 0 || periods == 0) {
      result = -1;
    } else {
      final sentenceLength = words / periods;
      final wordLength = (longWords * 100) / words;
      result = (sentenceLength + wordLength).round();
    }

    return result;
  }

  // TIP: Notice how flow analysis knows we covered the possible cases for `l`
  // (try removing the last else-statement).
  String description() {
    final l = lix();

    if (l > 0 && l < 20) {
      return 'very easy';
    } else if (l < 30) {
      return 'easy';
    } else if (l < 40) {
      return 'a little hard';
    } else if (l < 50) {
      return 'hard';
    } else if (l < 60) {
      return 'very hard';
    } else {
      return 'unknown';
    }
  }
}

LixCounts calcLix(String text) {
  // Count periods: . : ; ! ?
  var periods = (RegExp(r"[.:;!?]").allMatches(text).length);

  // Count words.
  //
  // TIP: We're using null safe versions of the core libraries, so we
  // can safely call length without checking for null (the APIs return empty
  // lists when there are no matches).
  var allWords = text.split(RegExp(r"\W+"));
  var words = allWords.length;
  var longWords = allWords.where((w) => w.length > 6).toList().length;

  return LixCounts(words: words, longWords: longWords, periods: periods);
}
