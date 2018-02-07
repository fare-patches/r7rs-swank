(define-library (gauche-swank)
  (export start-swank
          swank:lookup-presented-object
          swank:lookup-presented-object-or-lose)
  (import (scheme base) (scheme eval) (scheme read) (scheme write) (scheme file) (scheme case-lambda) (scheme process-context) (scheme repl) (scheme char)
          (srfi-69)
          (only (gauche hashutil) hash-table-for-each)
          (only (gauche base) keyword? keyword->string module-name all-modules module-table module-imports module-precedence-list ref <procedure> class-of)
          (only (gauche net) make-server-socket socket-accept socket-input-port socket-output-port)
          (gauche pp)
          (only (srfi-13) string-contains string-prefix? string-replace)
          (only (srfi-1) find fold list-index cons*))

  (include "specific/gauche.scm")
  (include "common/base.scm")
  (include "common/handlers.scm"))
