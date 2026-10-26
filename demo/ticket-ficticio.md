# DEMO-247 – Corregir la posición del CTA

> Caso ficticio y anonimizado. No contiene nombres, dominios ni identificadores de ninguna organización.

## Problema

El parámetro `cta_position` del evento de salida envía el identificador del botón en vez de su posición.

## dataLayer observado

```javascript
dataLayer.push({
  event: "demo_select_item",
  ecommerce: {
    items: [
      {
        item_name: "operador-ejemplo",
        ctaposition: "hero",
        cta_id: "button-demo"
      }
    ]
  }
});
```

## Configuración incorrecta

```text
cta_position = ecommerce.items.0.cta_id
```

## Resultado esperado

```text
cta_position = ecommerce.items.0.ctaposition
```

## Restricciones

- No modificar recursos ajenos al ejercicio.
- Trabajar en un workspace aislado.
- Validar que el workspace compile.
- Detenerse antes de publicar.
