bubble_babble
=============

Bubble Babble encoding for nodejs.

**Install**

```
npm install bubble_babble
```

**Usage**

```
var bubble = require('bubble_babble');

var encoded = bubble.encode('Pineapple');
console.log(encoded); // 'xigak-nyryk-humil-bosek-sonax'

var ascii = bubble.decode('xesef-disof-gytuf-katof-movif-baxux');
console.log(ascii); // '1234567890'
```
