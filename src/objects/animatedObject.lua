local class = require "lib.class"
local Object = require "src.objects.object"
-- AnimatedObjects is inherited from a basic objects,
-- Need a string state, indicate which animation should be rendered
-- and time_per_frame is a number in second how long does a frame last.

local AnimatedObject = class(Object, function(this, gm, object_id, object_size, state, time_per_frame)
    -- Object Id refers to src.globals
    Object.init(this, gm, object_id, object_size)
    this.state = state
    this.time_per_frame = time_per_frame
    this.frame_index = 1
    this.elapsed_time = 0
    this.animated = true
end)

return AnimatedObject