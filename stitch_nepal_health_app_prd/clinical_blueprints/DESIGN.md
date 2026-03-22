# Design System Document: The Clinical Precision Framework

## 1. Overview & Creative North Star

### Creative North Star: "The Clinical Curator"
The Digital Curator is a philosophy of extreme clarity, technical authority, and calm precision. In a national health context, the UI must act as a trusted intermediary—never decorative, always functional. We move beyond the "friendly startup" aesthetic by replacing soft, bubbly shapes with a disciplined, architectural geometry. 

This design system breaks the standard "template" look through **intentional asymmetry** and **tonal depth**. Rather than relying on rigid, repetitive boxes, we use varied column widths and layered surfaces to guide the eye toward critical health data. It is a "High-End Editorial" experience for medicine: authoritative like a medical journal, but as fluid as a modern digital platform.

---

## 2. Colors

The palette is anchored in "Deep Slate" and "Clinical Blue," designed to evoke stability and high-trust.

### Palette Strategy
- **Primary (`#004ac6`):** Used for primary actions and brand presence.
- **Surface (`#f7f9fb`):** The foundation. A cool, clean clinical white that reduces eye strain compared to pure `#ffffff`.
- **Secondary (`#545f73`):** Reserved for technical metadata and secondary navigation.

### The "No-Line" Rule
To achieve a premium, editorial feel, **prohibit 1px solid borders for sectioning.** Boundaries must be defined through background color shifts. Use `surface-container-low` sections sitting on a `surface` background to denote change in context. Lines feel cluttered; shifts in tone feel architectural.

### Surface Hierarchy & Nesting
Treat the UI as a series of physical layers. Use the `surface-container` tiers (Lowest to Highest) to create depth:
- **Level 1 (Foundation):** `surface`
- **Level 2 (In-page sections):** `surface-container-low`
- **Level 3 (Interactive Cards):** `surface-container-lowest` (pure white) to make them "pop" against the foundation.

### The "Glass & Gradient" Rule
For floating elements or high-impact hero sections, use **Glassmorphism**. Apply semi-transparent surface colors with a `backdrop-blur` effect. For main CTAs, use a subtle gradient from `primary` (#004ac6) to `primary-container` (#2563eb) to provide a "visual soul" that flat colors lack.

---

## 3. Typography: Plus Jakarta Sans

We utilize **Plus Jakarta Sans** for its technical, modern character. It bridges the gap between a grotesque and a geometric sans-serif, making it perfect for complex medical data.

*   **Display (Lg/Md/Sm):** For hero stats and landing headings. Use a `tight` letter-spacing (-0.02em).
*   **Headline (Lg/Md/Sm):** For major section titles (e.g., "Health Services"). Always `semi-bold` (600).
*   **Title (Lg/Md/Sm):** For card titles and modal headers. These convey the "Brand Voice."
*   **Body (Lg/Md/Sm):** For patient records and descriptions. Set `body-md` (0.875rem) as the default for high information density.
*   **Label (Md/Sm):** For technical metadata (e.g., "Date of Birth"). Use `medium` (500) weight to ensure legibility at small sizes.

---

## 4. Elevation & Depth

We eschew traditional shadows in favor of **Tonal Layering**.

*   **The Layering Principle:** Depth is achieved by stacking. A `surface-container-lowest` card placed on a `surface-container-low` background creates a natural lift.
*   **Ambient Shadows:** If an element must float (e.g., a critical Alert or FAB), use a shadow with a blur of 24px and an opacity of 4% using the `on-surface` color. This mimics natural light rather than a "drop shadow" effect.
*   **The "Ghost Border" Fallback:** If a border is required for accessibility, use the `outline-variant` token at **15% opacity**. This creates a "whisper" of a boundary that doesn't break the editorial flow.
*   **Sharp Geometry:** All containers must follow the **0.5rem (8px) to 0.75rem (12px)** radius scale. Never use "pill" shapes for buttons or cards; keep the corners disciplined.

---

## 5. Components

### Buttons
*   **Primary:** Solid `primary` background, white text. Radius: `md` (0.375rem). No gradients except on Hero CTA.
*   **Secondary:** `surface-container-high` background with `on-surface` text. This feels integrated, not "pasted on."
*   **Tertiary:** Ghost style. No background, `primary` text.

### Cards & Lists
*   **Rule:** Forbid the use of divider lines between list items. Use **Spacing 4 (1.4rem)** of vertical whitespace to separate items.
*   **Nesting:** High-priority cards (like the "COVID-19" alert in Reference Image 4) should use a subtle background tint of the semantic color (e.g., `error-container` at 5% opacity) rather than a heavy border.

### Input Fields
*   **Style:** Sharp corners (`md`). Use `surface-container-highest` for the background to create a "recessed" feel.
*   **Focus State:** A 2px `primary` "Ghost Border" at 40% opacity.

### Medical Chips
*   **Usage:** For blood types, status labels, or vaccination types. Use a square-ish radius (`sm`: 2px) to maintain the technical aesthetic. Avoid the rounded "pill" look entirely.

---

## 6. Do's and Don'ts

### Do
*   **Do** use asymmetrical layouts. (e.g., A wide medical history card next to a narrow "quick actions" sidebar).
*   **Do** use the `spacing-6` (2rem) and `spacing-8` (2.75rem) values for outer page margins to create "breathing room."
*   **Do** use `on-surface-variant` for helper text to maintain a high-contrast ratio for accessibility.

### Don't
*   **Don't** use 100% opaque black for text. Always use `on-surface` (#191c1e) to keep the clinical feel soft yet readable.
*   **Don't** use "pill" buttons (fully rounded). It degrades the "High-Trust/Technical" authority of the system.
*   **Don't** use standard shadows. If it looks like a "box-shadow," it's too heavy.
*   **Don't** use icons without purpose. Every icon must be accompanied by a label or serve a clear navigational intent (as seen in the bottom nav of the reference images).

---

## 7. Signature Pattern: The "Data Sheet" Grid
Inspired by the "Nepal Health App" reference, large data sets (like the Health ID section) should not be inside floating cards. Instead, they should be "pinned" to the `surface` using a `surface-container-low` background block that spans the full width, creating an anchored, stable feel for the user's most important information.