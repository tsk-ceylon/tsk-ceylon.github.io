import type { Faq } from './types';

// Common pre-sales questions, grounded in what we actually offer. Rendered on the
// Services page and emitted as FAQPage structured data for search.

export const faqs: Faq[] = [
  {
    q: 'How often should fire extinguishers be serviced?',
    a: 'Give each extinguisher a quick visual check monthly and a full professional service every year. We tag each unit and remind you before the next service is due.',
  },
  {
    q: 'Which extinguisher do I need?',
    a: 'It depends on what could catch fire — electrical, cooking oil, flammable liquids or ordinary materials. Send us your premises details and we will recommend the right type and mix.',
  },
  {
    q: 'Do you refill all brands of extinguisher?',
    a: 'Yes. We refill and recharge all extinguisher types and brands, pressure-test before return, and offer pickup and delivery.',
  },
  {
    q: 'Do you cover the whole island?',
    a: 'Yes. We deliver and carry out site visits across Sri Lanka.',
  },
  {
    q: 'Do you provide compliance documentation?',
    a: 'Yes. Every service comes with service tags, logbook entries and inspection records, so your premises stay ready for audit.',
  },
  {
    q: 'Can you train our staff?',
    a: 'Yes. We run hands-on training on extinguisher use and evacuation basics at your premises, with a certificate of attendance.',
  },
];
