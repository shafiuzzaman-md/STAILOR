/**
 * @kind problem
 * @id local.debug.memcmp-in-dict
 * @name debug: memcmp in dict files
 */
import cpp

predicate inDictFile(File f) {
  f.getRelativePath().regexpMatch("(?i)(^|/)(dict[^/]*\\.c|.*/dict[^/]*/[^/]+\\.c)$")
}

from FunctionCall fc, File f
where fc.getTarget().hasName("memcmp")
  and f = fc.getLocation().getFile()
  and inDictFile(f)
select fc, "memcmp here: " + f.getRelativePath()
