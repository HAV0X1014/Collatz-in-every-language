const std = @import("std");

pub fn main() !void {
    var buffer: [256]u8 = undefined;
    const slice: []u8 = try std.io.getStdIn().reader().readUntilDelimiter(&buffer, '\n');

    var number: u64 = try std.fmt.parseInt(u64, slice, 10);
    var steps: u64 = 0;
    var peak: u64 = number;

    const startTime: i128 = std.time.nanoTimestamp();

    while (true) {
        if (number & 1 == 0) {
            steps += 1;
            if (number == 2) break;
        } else {
            number = 3 * number + 1;
            if (number > peak) peak = number;
            steps += 2;
        }
        number >>= 1;
    }

    const endTime: i128 = std.time.nanoTimestamp();

    std.debug.print("peak: {}, steps: {}, time: {}ns\n", .{peak, steps, (endTime - startTime)});
}