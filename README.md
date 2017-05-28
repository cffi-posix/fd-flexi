# fd-flexi

fd-flexi streams are flexi streams using fd-gray streams to embed
Unix file descriptors in standard Common Lisp streams supporting
dynamic external encoding.

### fd-flexi:input-stream *fd* &optional (*external-format* :utf-8) --> *stream*

Creates an input flexi stream for file descriptor *fd*, initially using
*external-format* encoding.

```Lisp
(read-line (fd-flexi:input-stream 0))
```

### fd-flexi:output-stream *fd* &optional (*external-format* :utf-8) --> *stream*

Creates an output flexi stream for file descriptor *fd*, initially using
*external-format* encoding.

```Lisp
(write-string "Hello world !" (fd-flexi:output-stream 1))
```

###  fd-flexi:io-stream *fd* &optional (*external-format* :utf-8) --> *stream*

Creates an input/output flexi stream for file descriptor *fd*, initially
using *external-format* encoding.

```Lisp
(let ((stream (fd-flexi:io-stream (fcntl:open "file.txt" fcntl:+o-rdwr+))))
  (write-string (read-line stream) stream))
```

### fd-flexi:with-input-stream (*var* *fd* &optional (*external-format* :utf-8)) &body *body* --> *result*

Creates an input flexi stream for file descriptor *fd*, initially
using *external-format* encoding, that will be closed returning
from *body*.

```Lisp
(fd-flexi:with-input-stream (in (fcntl:open "file.txt" fcntl:+o-rdonly+))
  (read-line in))
```

### fd-flexi:with-output-stream (*var* *fd* &optional (*external-format* :utf-8)) &body *body* --> *result*

Creates an output flexi stream for file descriptor *fd*, initially
using *external-format* encoding, that will be closed returning from
*body*.

```Lisp
(fd-flexi:with-output-stream (out (fcntl:open "file.txt" fcntl:+o-wronly+))
  (write-string "Hello world !" out))
```

### fd-flexi:with-io-stream (*var* *fd*) &body *body* --> *result*

Creates an input/output flexi stream for file descriptor *fd*, initially
using *external-format* encoding, that will be closed returning from
*body*.

```Lisp
(fd-flexi:with-io-stream (out (fcntl:open "file.txt" fcntl:+o-rdwr+))
  (write-string (read-line stream) stream))
```
