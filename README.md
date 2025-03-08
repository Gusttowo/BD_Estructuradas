# Proyecto Final - Bases de Datos Estructuradas

## Descripción

El proyecto consiste en el diseño e implementación de una base de datos relacional para la administración del edificio "La Casa en el Aire". El sistema permite gestionar los pagos de administración de los propietarios, calcular cuotas mensuales, registrar pagos y generar informes sobre el estado financiero del edificio.

## Requisitos del Sistema

El sistema debe cumplir con los siguientes requerimientos:

- *Gestión de inmuebles:* Cada inmueble tiene un código, área, tipo (apartamento, garaje, cuarto útil) y propietarios.

- *Gestión de propietarios:* Los propietarios pueden tener múltiples inmuebles, con información como identificación, nombre, dirección, email y teléfono.

- *Presupuesto anual:* Se almacena el valor aprobado por la asamblea general y se calcula el pago mensual de cada inmueble en función del área.

- Cuotas extras: Se pueden aprobar cuotas adicionales con código, mes, finalidad y valor.

- *Facturación mensual:* Se generan facturas que incluyen el monto a pagar, saldo vencido e intereses de mora (1.5% mensual).

- *Pagos de propietarios:* Se registran pagos sin restricción de monto. Si un propietario paga todo el año por adelantado, obtiene un 10% de descuento.

## Funcionalidades Implementadas

- 🏠 Gestión de inmuebles y propietarios: Registro de propiedades con su tipo, área y propietarios asociados.

- 📑 Facturación mensual: Cálculo automático de valores a pagar con saldo vencido e intereses de mora.

- 💰 Pagos y descuentos: Registro de pagos, con posibilidad de descuentos por pago anticipado.

- 📊 Reportes administrativos:

    - 📜 Estado de cuenta de un propietario en un período determinado.
    - 💵 Listado de pagos y total recibido en un mes específico.
    - 🚨 Identificación de apartamentos morosos.
    - ✅ Generación de paz y salvo.
    - 📈 Informe tributario anual para propietarios.

- 🔄 Restricciones de cambio de propietario: Solo se permite si está al día en los pagos.

- 🔍 Consultas para propietarios: Visualización del valor a pagar y pagos realizados por fecha.

## 🚀Tecnologías Utilizadas

- Motor de base de datos: SQL Server

- Lenguaje SQL: Para la definición de estructuras, consultas y procedimientos almacenados.

- Procedimientos almacenados: Para automatizar cálculos y procesos.

- Disparadores (Triggers): Para asegurar la integridad de los datos.

- Vistas: Para facilitar la consulta de información específica.

## Instalación y Configuración

1. Instalar SQL Server.

2. Crear la base de datos ejecutando el script de estructura.

3. Poblar las tablas con datos de prueba.

4. Ejecutar los procedimientos almacenados y disparadores.

## Modelo Entidad - Relación

![Proyecto_Modelo E-R(Corregido)](https://github.com/user-attachments/assets/8e6bdf3e-e0f8-4731-aa60-e55fa30153ec)

### Contribuciones

Este proyecto fue desarrollado como parte del curso de Bases de Datos Estructuradas en el primer semestre de 2023.

- Autores: **Gustavo Velásquez Granado - Jesus David Mosquera**
- Institución: Institución Universitaria de Envigado
