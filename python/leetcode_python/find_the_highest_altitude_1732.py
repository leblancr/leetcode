# There is a biker going on a road trip. The road trip consists of n + 1 points
# at different altitudes. The biker starts his trip on point 0 with altitude equal 0.
#
# You are given an integer array gain of length n where gain[i] is the net gain in altitude
# between points i and i + 1 for all (0 <= i < n). Return the highest altitude of a point.

class HighestAltitude:
    def __init__(self, input_list):
        self.gain = input_list

    def find_the_highest_altitude(self) -> int:
        current_point = 0  # start at 0
        highest_altitude = current_point

        for item in self.gain:
            current_point += item
            highest_altitude = max(current_point, highest_altitude)

        return highest_altitude




