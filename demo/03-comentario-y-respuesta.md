# El comentario

> Gracias por configurarlo, pero no parece funcionar. Veo el valor en el dataLayer, pero la nueva variable devuelve `undefined`.

## Evidencia de la captura

Variable inspeccionada:

```text
DLV - cta_position
```

Este nombre representa un campo de nivel raíz:

```javascript
dataLayer.cta_position
```

Ese campo no existe, por lo que `undefined` es correcto.

Variable implementada:

```text
Demo - DLV - ecommerce.items.0.ctaposition
```

Esta lee:

```javascript
dataLayer.ecommerce.items[0].ctaposition
```

Resultado esperado: `hero`.

## Respuesta propuesta

Gracias por comprobarlo.

La variable resaltada en la captura lee el campo de nivel raíz, que no está presente en este evento, por lo que `undefined` es el resultado esperado.

La variable creada para este ejercicio lee `ecommerce.items[0].ctaposition`. ¿Puedes comprobar esa variable en el mismo evento? Si también aparece como `undefined`, lo investigaré.

## Decisión humana

El texto se revisa antes de enviarlo. La IA no responde automáticamente.
