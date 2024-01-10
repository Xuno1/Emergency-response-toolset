var should = require('should'),
    bubble = require('../bubble_babble');

var test_vectors = [
  {
    ascii: '',
    encoding: 'xexax'
  },
  {
    ascii: '1234567890',
    encoding: 'xesef-disof-gytuf-katof-movif-baxux'
  },
  {
    ascii: 'Pineapple',
    encoding: 'xigak-nyryk-humil-bosek-sonax'
  }
];

var random_int = function(min, max) {
  return Math.floor(Math.random() * (max - min + 1) + min);
}

var random_str = function() {
  return Math.random().toString(36).substr(2, random_int(0, 11));
};

describe('BubbleBabble', function() {
  describe('#encode()', function() {
    it('should encode a buffer', function() {
      test_vectors.forEach(function(test) {
        bubble.encode(new Buffer(test.ascii)).should.equal(test.encoding);
      });
    });

    it('should encode a string', function() {
      test_vectors.forEach(function(test) {
        bubble.encode(test.ascii, 'ascii').should.equal(test.encoding);
      });
    });

    it('should return a string that starts and begins with "x"', function() {
      var encoded, i;

      for (var i = 0; i < 10; ++i) {
        encoded = bubble.encode(random_str());
        encoded.should.startWith('x');
        encoded.should.endWith('x');
      }
    });

    it('should be the inverse of decoding', function() {
      var encoding = 'xesef-disof-gytuf-katof-movif-baxux';
      bubble.encode(bubble.decode(encoding)).should.equal(encoding);
    });
  });

  describe('#decode()', function() {
    it('should decode a string and return a buffer', function() {
      test_vectors.forEach(function(test) {
        var decoded = bubble.decode(test.encoding);
        Buffer.isBuffer(decoded).should.be.true;

        decoded.toString().should.equal(test.ascii);
      });
    });

    it('should throw exception on corrupt input', function() {
      (function() {
        bubble.decode('xesyf-disof-gytuf-katof-movif-baxux');
      }).should.throw;

      (function() {
        bubble.decode('xesef-disof-gytuf-katof-movif-baxu');
      }).should.throw;
    });

    it('should be inverse of encoding a string', function() {
      var ascii_input = 'Inverse of each other.';

      bubble.decode(bubble.encode(ascii_input)).toString().should.equal(ascii_input);
    });

    it('should be inverse of encoding a buffer', function() {
      var input = Buffer.from('ffffffff','hex');

      bubble.decode(bubble.encode(input)).equals(input).should.be.true;
    });      
  });

});
