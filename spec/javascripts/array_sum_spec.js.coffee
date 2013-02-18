describe "Array#sum", ->
  it "returns 0 when the Array is empty", ->
    [].length.should.equal(0)

  it "returns the sum of numeric elements", ->
    [1,2,3].length.should.equal(3)
