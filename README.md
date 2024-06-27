# Mysql2_AutoCar

# AutoRental

Autorental es un proyecto cuyo objetivo es crear una base de datos sencilla para una empresa que se dedica al servicio de alquiler. Es un proyecto interesante debido a sus requerimientos técnicos, que abarcan desde la lógica de funciones hasta la seguridad informática con asignación de usuarios y roles.

La tecnología implementada en este proyecto es MySQL. Se comenzó con un conocimiento básico de esta herramienta y, a medida que se ha trabajado en el proyecto, se ha logrado aprender mucho más sobre este lenguaje, el cual permite la organización de bases de datos relacionales (SQL). En los siguientes apartados, encontrarás toda la información recopilada para este proyecto. Así, más que ser simplemente un proyecto de código, esta es una guía/blog para alguien que esté comenzando en MySQL y quiera enfrentarse a un proyecto real de pequeña escala.

# Dia1

Hoy se dio inicio al proyecto. Lo primero que tuvimos en cuenta fue mantener claros los objetivos de la organización, comprender la lógica del negocio y determinar cómo podríamos escalar esta lógica. Por lo tanto, en esta etapa desarrollamos los modelos conceptuales y lógicos, además de crear un diccionario de valores para definir las variables que manejaríamos y los tipos de datos que almacenaríamos a lo largo del proyecto. Puedes evidenciar todo esto en las primeras páginas de nuestro informe, el cual podrás visualizar en el siguiente enlace.

[Informe AutoRental](https://www.notion.so/Informe-AutoRental-80276b39790f4f0188f338cd54e2ac68?pvs=21) 

# Dia2

Una vez que tuvimos clara toda la lógica a implementar y habíamos elaborado un plan detallado paso a paso, comenzamos con la escritura del código. Lo primero que hicimos fue la creación de las tablas, una tarea relativamente sencilla gracias a los modelos establecidos en el primer día. Estos modelos nos proporcionaron un orden y una lógica clara para seguir al programar.

Aunque cometimos un error ese día por no haber leído cuidadosamente algunos detalles, este error no afectó el desarrollo inmediato del proyecto. Además, durante esta jornada también creamos las funciones que proporcionarían la lógica necesaria para el funcionamiento del proyecto. puedes encontrar la implementación tanto en este repositorio como en la documentación.

# Dia3

Llegó el momento de implementar las medidas de seguridad necesarias para proteger nuestro proyecto de cualquier amenaza por parte de las personas con acceso a nuestra base de datos. Definimos tres tipos de usuarios en MySQL: Administrador, Clientes y Empleados, cada uno con privilegios específicos.

- **Administrador:** Tiene acceso completo a todas las funciones y datos de la base de datos, permitiendo la administración y configuración general.
- **Clientes:** Pueden acceder a su propia información y realizar ciertas acciones limitadas, garantizando la privacidad y seguridad de sus datos.
- **Empleados:** Tienen permisos intermedios, permitiéndoles gestionar las tareas operativas diarias sin comprometer la integridad de la base de datos.

Esta estructura de usuarios y privilegios asegura que cada grupo solo tenga acceso a la información y funciones necesarias para sus roles, mejorando la seguridad y eficiencia del sistema.

## Dia4

Nos dimos cuenta de que no era suficiente con simplemente crear usuarios; necesitábamos comprender más a fondo el manejo integral de MySQL, desde su funcionamiento hasta los diversos aspectos que abarca este lenguaje. Por lo tanto, dedicamos este día completamente a la investigación.

Aprendimos muchas cosas valiosas que documentamos en el software de Notion. Esta recopilación de información es accesible para todos, y puedes visualizar cada uno de los artículos que creamos a continuación:

1. **Funcionamiento Interno de MySQL:** Exploramos cómo MySQL maneja las operaciones internas, optimización de consultas y almacenamiento de datos.
2. **Seguridad Avanzada en MySQL:** Detallamos métodos y mejores prácticas para asegurar la base de datos más allá de la simple creación de usuarios.
3. **Gestión de Usuarios y Roles:** Profundizamos en la configuración de privilegios y la asignación de roles para mantener una administración eficiente y segura.

[Funciones y Procedimientos](https://www.notion.so/Funciones-y-Procedimientos-7f77cfd02f5d4d48a3b8190806821beb?pvs=21) 

[Consultas mysql](https://www.notion.so/Consultas-mysql-0bbb26d175fa4a44ab409f906d76573e?pvs=21) 

[Triggers y Eventos](https://www.notion.so/Triggers-y-Eventos-581d35ef271742bdb65f8939cdbeb4fc?pvs=21) 

[Creación de users,permisos y roles](https://www.notion.so/Creaci-n-de-users-permisos-y-roles-4b0ee72a8abe4704bff09e69a6cb29ef?pvs=21) 

# Dia5

En este día final, nos dedicamos a realizar una reestructuración integral de la arquitectura del código. Separar cada apartado permitió una mayor claridad y comprensión del mismo, facilitando el mantenimiento y futuras actualizaciones del proyecto. Esta organización del código es crucial para asegurar que todos los elementos estén bien definidos y accesibles.

Además de la reestructuración, asignamos roles específicos a los usuarios para garantizar que cada persona tuviera acceso solo a las funciones y datos necesarios para sus tareas. Este enfoque no solo mejora la seguridad, sino que también optimiza el flujo de trabajo al definir claramente las responsabilidades de cada usuario.

Para fortalecer aún más la lógica del sistema, creamos eventos, procedimientos almacenados y triggers. Estos componentes añadieron una capa de automatización y eficiencia a la base de datos. Los eventos permiten la ejecución programada de tareas, los procedimientos almacenados encapsulan operaciones complejas para facilitar su reutilización y los triggers aseguran que ciertas acciones se ejecuten automáticamente en respuesta a eventos específicos en la base de datos.

Estas mejoras hicieron que la base de datos fuera mucho más robusta y eficiente. Ahora, el sistema no solo es más seguro y organizado, sino también capaz de manejar operaciones complejas de manera más efectiva. Este último día de trabajo culminó con la integración de todos estos elementos, dejando el proyecto en una excelente posición para su uso y futura expansión.
