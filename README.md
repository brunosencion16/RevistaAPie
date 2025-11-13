# 📘 Proyecto: Base de Datos “Revista A Pie”  
**Materia:** Bases de Datos 1 – Universidad ORT Uruguay  
**Año:** 2024  
**Autor:** Bruno Sención  

---

## 🧩 Descripción General

Proyecto académico orientado al **diseño e implementación de una base de datos relacional en SQL Server** para la revista deportiva *“A Pie”*, encargada de gestionar los datos de la **liga de fútbol local “Pueblo Marmota”**.  
El sistema permite administrar equipos, jugadores, árbitros, canchas y partidos, aplicando principios de **modelado E-R, normalización hasta 3FN, integridad referencial y consultas SQL avanzadas** para análisis y mantenimiento de la información.

---

## ⚙️ Características Principales

- **Modelado completo** en base a un análisis de requerimientos reales de una liga deportiva.  
- **Normalización a tercera forma normal (3FN)** garantizando consistencia y ausencia de redundancia.  
- **Implementación de restricciones y validaciones**:  
  - Claves primarias, foráneas y únicas.  
  - Checks de dominio y fechas válidas (`fundacionEquipo < GETDATE()`).  
  - Integridad referencial entre todas las entidades.  
- **Consultas SQL complejas** para obtener estadísticas, listados y reportes personalizados.  
- **Manipulación de estructura** con alteraciones dinámicas (`ALTER TABLE`, `UPDATE`, `DELETE`).  
- **Carga de datos de prueba realistas** para validar el comportamiento de las consultas.  

---

## 🧱 Estructura del Sistema

### Tablas principales
- **Equipo:** datos generales del club, año de fundación, presidente, región y color.  
- **Jugador:** información personal, tipo de jugador (profesional/amateur), equipo asociado y carnet de salud.  
- **Cancha:** capacidad, ubicación y equipo propietario.  
- **Arbitro:** datos personales y contacto.  
- **Formulario / Detalle:** registro de desempeño de jugadores por partido (goles, tarjetas).  
- **Partido:** equipos participantes, resultado, árbitro y cancha utilizada.  

---

## 🧮 Consultas Implementadas

El proyecto incluye un conjunto de consultas y operaciones que demuestran dominio de SQL Server:

1. Listado de partidos disputados en el año corriente.  
2. Equipos con “FC” en su nombre y sus estadísticas como local.  
3. Ranking de goleadores con total de goles anotados.  
4. Árbitros con cantidad de tarjetas amarillas y rojas.  
5. Jugadores amateurs que cumplen múltiples condiciones (color, rango de fechas y capacidad de cancha).  
6. Canchas con cantidad de partidos en un rango determinado.  
7. Equipos con más de dos partidos en canchas de gran capacidad.  
8. Árbitro con mayor cantidad de tarjetas rojas.  
9. **Alteración estructural:** agregado de columna `FundaLiga` a la tabla `Equipo` y actualización automática según antigüedad (>50 años).  
10. Eliminación de jugadores profesionales sin carnet médico vigente.  

---

## 🧠 Conceptos Aplicados

- Diseño Entidad–Relación (E–R) y transformación a Modelo Relacional.  
- Normalización a **3FN** (Tercera Forma Normal).  
- Uso de **restricciones de integridad** (`PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, `DEFAULT`, `UNIQUE`).  
- **Funciones de agregación** (`SUM`, `COUNT`, `MAX`, `AVG`) y agrupamientos (`GROUP BY`, `HAVING`).  
- **Manipulación de fechas** con `DATEDIFF()` y `GETDATE()`.  
- Alteraciones estructurales y control de versiones de esquema (`ALTER TABLE`, `UPDATE`, `DELETE`).  

---

## 🧰 Tecnologías Utilizadas

- **Microsoft SQL Server**  
- **SQL Server Management Studio (SSMS)**  
- **Lenguaje:** SQL (DDL, DML, consultas)  
- **Compatibilidad:** Azure Data Studio / Visual Studio Data Tools  

---

- **Microsoft SQL Server**  
- **SQL Server Management Studio (SSMS)**  
- **Lenguaje:** SQL (DDL, DML, consultas)  
- **Compatibilidad:** Azure Data Studio / Visual Studio Data Tools  

---

## 🏁 Resultado Final

La base de datos **“Revista A Pie”** permite administrar de forma estructurada toda la información de una liga de fútbol, garantizando integridad, escalabilidad y facilidad para la generación de reportes.  
El proyecto demuestra dominio en **diseño relacional, normalización, manejo de consultas complejas y buenas prácticas en SQL Server**.
