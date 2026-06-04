import type { Value } from './types';

// Company narrative, surfaced from the printed company profile so visitors and
// search engines see it without downloading the PDF.

export const vision =
  'To become a trusted, leading provider of fire safety solutions in Sri Lanka — delivering reliable products, professional services and innovative safety solutions that protect lives and property.';

export const mission =
  'To provide high-quality fire safety equipment and dependable service at affordable prices, while upholding strong safety standards, professionalism and customer trust.';

export const values: Value[] = [
  { title: 'Safety first', blurb: 'Safety sits at the centre of everything we do — for people, businesses and property.' },
  { title: 'Customer trust', blurb: 'Honesty, reliability and lasting relationships with every customer we serve.' },
  { title: 'Quality assurance', blurb: 'Quality-tested products and dependable service that meet accepted standards.' },
  { title: 'Reliability', blurb: 'Consistent, professional and on-time service, every visit.' },
  { title: 'Integrity', blurb: 'Transparency, professionalism and ethical responsibility in all we do.' },
];

export const whyChooseUs: Value[] = [
  { title: 'Experience you can trust', blurb: 'Hands-on fire-safety knowledge and practical, dependable advice.' },
  { title: 'One partner, end to end', blurb: 'Supply, install, refill, inspect and train — all under one roof.' },
  { title: 'Affordable pricing', blurb: 'Cost-effective protection without compromising on quality.' },
  { title: 'Fast, reliable service', blurb: 'Quick quotes and responsive support by phone, WhatsApp or the form.' },
];
