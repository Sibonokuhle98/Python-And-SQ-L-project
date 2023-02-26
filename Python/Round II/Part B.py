import pandas as pd
import numpy as np
def get_teachers_students():
    df_teacher = pd.DataFrame({
        "name": ["Pep Guardiola","Jurgen Klopp", "Mikel Arteta", "Zinedane Zidane"],
        "married": [True, True, False, True],
        "school":["Manchester High Schol", "Liverpool High School", "Arsenal High School", np.nan]
    })
    df_student = pd.DataFrame({
        
        "teacher": ["Mikel Arteta", "Mikel Arteta", "Pep Guardiola", "Jurgen Klopp","Jurgen Klopp", "Jurgen Klopp","Pep Guardiola", "Pep Guardiola","Mikel Arteta"],
        "name": ["Bukayo Saka", "Gabriel Martinelli", "Jack Grealish", "Roberto Firmino","Andrew Robertson", "Darwin Nunez", "Ederson Moraes","Manuel Akanji", "Thomas Partey"],
        "age": [21,21,27,31,28,23,29,27,29],
        "height":['2.1m','2.1m','2.1m','2.1m','2.1m','2.1m','2.1m','2.1m','2.1m'],
        "weight":['80kg','70kg','690kg','73kg','60kg','70kg','80kg','88kg','74kg',]
    })
    
    grouped = df_student.groupby("teacher")
    
    students_list = [group.drop("teacher", axis=1).to_dict(orient="records") for name, group in grouped]
    
    df_teacher_students =pd.DataFrame({
        "teacher": grouped.groups.keys(),
        "students": students_list
    })
    
    df_teacher_students = pd.merge(df_teacher, df_teacher_students, left_on="name", right_on="teacher")
    
    df_teacher_students = df_teacher_students.drop("teacher", axis =1)
    
    
    result = df_teacher_students.to_dict(orient = "records")
    
    if not result:
        return "no matching teachers found in student data"
    print("Result")
    print(list(result[0].keys()))
    
    return result
get_teachers_students()