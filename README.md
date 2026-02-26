Haciendo uso de MySQL.
Abra MySQL
Conéctese a la instancia local.
En Archivo.
Abrir SQL Script
Abra: Core1.sql (Ubicado en Github: data/db/)
Ejecute el script.
Un nuevo esquema llamado core debe aparecer en sus bases de datos. 
- Este esquema contiene 10 tablas. 
    * cbi.answers
    * cbi_questions
    * cbi_results
    * department
    * employees
    * history_operation
    * history_performance
    * job_titles
    * rating
    * work_type
- Contiene 4 vistas.
    * view_cbi_by_department.
    * view_cbi_results
    * view_e,ployees_by_department
    * view_operation_by_department
- Contiene 2 store procedure.
    * Sp_desempeno_empleado(emp_id)
    * Sp_desempeno_empleado_breakdown(emp_id)
    
Nuevamente, en Archivo.
Abrir SQL Script
Abra: Core2.sql (Ubicado en Github: data/db/)
Este script cargara los datos en las tablas.
