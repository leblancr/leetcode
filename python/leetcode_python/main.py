import leetcode

print("Running leetcode problems")

import argparse
import leetcode
import os


# Find the script for the number entered and run it.
def main():
    parser = argparse.ArgumentParser(
        description="Run a selected LeetCode problem function"
    )

    parser.add_argument(
        "problem",  # variable to hold arg
        nargs="?",
        default=None,
        help="Name of the LeetCode function to run (e.g., fizz_buzz_412)"
    )

    args = parser.parse_args()
    #print(args.problem)  # the number of the leetcode problem

    # Find script ending with that number
    with os.scandir('.') as it:
        found = False
        for entry in it:
            if not entry.is_file():
                continue
            name = os.path.splitext(entry.name)[0]
            if args.problem is None or name.endswith(args.problem):
                print(entry.name)
                if args.problem and name.endswith(args.problem):
                    getattr(leetcode, name)()
                    found = True
                    break

    if args.problem and not found:
        print(f"No file name found ending with {args.problem}.")


if __name__ == "__main__":
    main()