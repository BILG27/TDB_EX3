 /*you are not allowed to do ALTER or DROP operation on triggers. these are the implicit commits that you see in the error message (see more details here)
delimiter //
create trigger constraints_cuentas_pacientes after update on cuentas_pacientes
for each row 
begin
alter table cuentas_pacientes add foreign key (paciente_id) references pacientes(paciente_id) on delete cascade on update cascade;
alter table cuentas_pacientes add foreign key (forma_pago_pac_id) references formas_pago_pacientes(forma_pago_pac_id) on delete cascade on update cascade;
alter table cuentas_pacientes_detalles add foreign key (cuentas_pacientes_id) references cuentas_pacientes(cuentas_pacientes_id) on delete cascade on update cascade;
alter table formas_pago_pacientes add foreign key (paciente_id) references pacientes(paciente_id) on delete cascade on update cascade;
alter table formas_pago_pacientes add foreign key (forma_pago_id) references formas_pago(forma_pago_id) on delete cascade on update cascade;
alter table registro_pacientes add foreign key (paciente_id) references pacientes(paciente_id) on delete cascade on update cascade;
alter table registro_pacientes add foreign key (cuentas_pacientes_id) references cuentas_pacientes(cuentas_pacientes_id) on delete cascade on update cascade;
alter table registro_pacientes add foreign key (registro_por_empleado_id) references empleados(empleados_id) on delete cascade on update cascade;
alter table direcciones_empleados add foreign key (empleados_id) references empleados(empleados_id) on delete cascade on update cascade;
alter table direcciones_empleados add foreign key (direccion_id) references direcciones(direccion_id) on delete cascade on update cascade;
alter table direcciones_pacientes add foreign key (direccion_id) references direcciones(direccion_id) on delete cascade on update cascade;
alter table direcciones_pacientes add foreign key (paciente_id) references pacientes(pacientes_id) on delete cascade on update cascade;
alter table cuartos add foreign key (paciente_id) references pacientes(pacientes_id) on delete cascade on update cascade;

end //
delimiter ;


*/



