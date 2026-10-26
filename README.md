# Agents, skills and memory – MeasureCamp Madrid 2026

Companion materials for David M. Pino's MeasureCamp Madrid 2026 session:

> **Agentes, skills y memoria: mi sistema diario de IA**  
> *Agents, skills and memory: my daily AI system*

The session follows a fictional, anonymised analytics task through several specialised components:

1. A triage agent turns an ambiguous request into verifiable acceptance criteria.
2. A GTM specialist prepares an isolated implementation.
3. A human reviews the work and retains responsibility for publishing.
4. New evidence is examined before an assisted response is proposed.

The central principle is:

> **Automate the work. Do not delegate responsibility.**

## Contents

- `slides/` – public version of the presentation.
- `demo/` – offline replay using fictional data and identifiers.
- `canvas/` – simplified JSON Canvas diagram of the system.
- `Reproduccion-segura.command` – macOS shortcut for launching the offline replay.

## Run the offline demo

```bash
cd demo
./replay.sh
```

The replay:

- uses fictional names and identifiers;
- does not connect to Jira, GTM, GA4 or any external service;
- does not require credentials;
- does not publish or modify anything.

## What is intentionally not included

This repository does not contain company data, production identifiers, private domains, credentials, internal documentation or scripts that access a real analytics environment.

## Related tools

The talk was based on the agents, skills and command-line tools I use in my daily work:

- [`gafour`](https://github.com/damupi/gafour) – GA4 reporting and metadata inspection from the command line.
- [`gtm-cli`](https://github.com/damupi/gtm-cli) – Google Tag Manager administration and controlled workspace workflows.
- [`gaad-cli`](https://github.com/damupi/gaad-cli) – GA4 property administration through the Admin API.

The agents and skills shown in the session add specialised procedures, safety rules and human approval boundaries around these tools.

## Author

David M. Pino – [LinkedIn](https://www.linkedin.com/in/dmpino/) · [GitHub](https://github.com/damupi)
