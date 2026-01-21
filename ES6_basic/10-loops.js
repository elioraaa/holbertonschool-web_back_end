export default function appendToEachArrayValue(array, appendString) {
    let index = 0;
    for (let el of array) {
        array[index] = appendString + el;
        index++;
    }

    return array;
}
