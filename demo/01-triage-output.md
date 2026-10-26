# DEMO-247 – Tracking triage

## Solicitud actual

- Corregir el valor enviado como `cta_position`.
- El campo correcto ya existe en `ecommerce.items[0].ctaposition`.
- Etapa: aprobado para implementación en un sandbox ficticio.

## Contrato de aceptación

| Requisito | Clasificación | Evidencia |
|---|---|---|
| Leer el campo anidado `ctaposition` | Explícito | Ejemplo de dataLayer |
| No utilizar `cta_id` como posición | Explícito | Son conceptos distintos |
| Aislar el cambio en un workspace | Establecido | Control de alcance |
| Compilar sin errores | Establecido | GTM quick-preview |
| No publicar automáticamente | Establecido | Aprobación humana |

## Sistemas afectados

- Código web: no.
- GTM: sí.
- GA4 Admin: no.
- Reporting: no.

## Routing recomendado

1. **GTM Admin** – preparar la variable de dataLayer y los recursos de demostración.
2. **Humano** – revisar el diff y decidir cualquier publicación.

## Approval gate

La publicación requiere aprobación humana explícita.
