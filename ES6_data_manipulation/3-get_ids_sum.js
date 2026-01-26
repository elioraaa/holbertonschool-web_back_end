export default function getStudentIdsSum(getListStudents) {
    const result = getListStudents.reduce((sum, students) => {
        sum += students.id
        return sum;
    }, 0);
    return result;
}