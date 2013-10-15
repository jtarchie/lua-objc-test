local _ = require("underscore")
local ffi = require "ffi"
local objc = require "objc"
ffi.load("libgreeter")
ffi.cdef [[
  int printf ( const char * format, ... );
]]
local lib = ffi.C


describe("greeter", function()
  it("has stuff", function()
    spy.on(ffi.C, "printf")
    local class = objc.Greeter
    local greeter = class:alloc():init()
    greeter:greet()
    assert.spy(ffi.C.printf).was.called()
  end)
end)
