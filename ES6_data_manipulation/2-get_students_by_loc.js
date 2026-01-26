export default function getStudentsByLocation(getStudentsListStudent, city) {
    return getStudentsListStudent.filter(student => student.location === city);
}
