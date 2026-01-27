export default function cleanSet(set, startString) {
    if (!startString || !(set instanceof Set)) {
        return '';
    }

    return Array.from(set)
    .filter((value) => value.startsWith(startString))
    .map((value) => value.slice(startString.length))
    .join('-');
}
