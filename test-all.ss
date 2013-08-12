;;; Copyright (c) 2000-2013 Dipanwita Sarkar, Andrew W. Keep, R. Kent Dybvig, Oscar Waddell
;;; See the accompanying file Copyright for detatils

(import (rnrs) (tests compiler-test) (tests helpers) (tests unit-tests) (nanopass helpers))
(printf "construct-id called ~d times\n" (construct-id-call-count))
(printf "Running unit tests\n")
(run-unit-tests)
(run-ensure-correct-identifiers)
(run-maybe-tests)
(run-maybe-dots-tests)
(printf "Compiler loaded, running all tests (quietly)\n")
(time
  (begin
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)))
(exit)