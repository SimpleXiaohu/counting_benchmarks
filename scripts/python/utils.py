import re

def regexesCountLines(lines: 'list[str]'):
    regexesCount = 0
    loopRegexesCount = 0
    lagreSumCount = 0
    loopMaxCounts = {}
    for line in lines:
        regexesCount += 1
        (isLargeSum, haveloop, singLoopMaxCounts) = regexesCountLine(line)
        loopRegexesCount += haveloop
        lagreSumCount += isLargeSum
        updateMaxCounts(loopMaxCounts, singLoopMaxCounts)
    for (max, count) in sorted(loopMaxCounts.items(), key=lambda x: x[1]):
        print(f"loopMaxCount: {max} -> {count}")
    print(f"regexesCount: {regexesCount}")
    print(f"loopRegexesCount: {loopRegexesCount}")
    print(f"lagreSumCount: {lagreSumCount}")
    return (regexesCount, loopRegexesCount, loopMaxCounts)


def regexesCountLine(line: str):
    LOOP_RE = re.compile(r'(?<!\\x)\{(\d+),?\}|\{\d+,(\d+)\}')
    loopMaxCounts = {}
    loopMaxs = LOOP_RE.findall(line)
    for loopMax in loopMaxs:
        (loopMax1, loopMax2) = loopMax
        updateMaxCounts(loopMaxCounts, parseCountString(loopMax1))
        updateMaxCounts(loopMaxCounts, parseCountString(loopMax2))
    maxCountSum = sum(loopMaxCounts.keys())
    return (int(maxCountSum > 50), int(len(loopMaxs) > 0), loopMaxCounts)


def updateMaxCounts(maxCounts: 'dict[int, int]', newMaxCounts: 'dict[int, int]'):
    """update maxCounts with newMaxCounts

    Args:
        maxCounts (dict[int, int]): The maxCounts to update
        newMaxCounts (dict[int, int]): The new maxCounts to update with
    """
    for (max, count) in newMaxCounts.items():
        if (max in maxCounts):
            maxCounts[max] += count
        else:
            maxCounts[max] = count


def parseCountString(count: str):
    if (count == ''):
        return {}
    else:
        return {int(count): 1}


def regexesCount(filename: str):
    f = open(filename, "r", encoding="utf8")
    lines = f.readlines()
    f.close()
    return regexesCountLines(lines)
