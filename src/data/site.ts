import type { SiteConfig } from './types';

// ─── PLACEHOLDERS — replace each marked value with TSK Ceylon's real details ───
export const site: SiteConfig = {
  name: 'TSK Ceylon',
  legalName: 'TSK Ceylon (Pvt) Ltd', // PLACEHOLDER — legal entity name
  tagline: 'Certified Fire Extinguishers & Servicing in Sri Lanka',
  description:
    'TSK Ceylon supplies, installs and services certified fire extinguishers for offices, factories, hotels and homes across Sri Lanka. Request a quote today.',
  url: 'https://tskceylon.github.io',
  phoneDisplay: '+94 11 234 5678',          // PLACEHOLDER — real phone
  phoneHref: '+94112345678',                // PLACEHOLDER — tel: digits
  whatsappNumber: '94771234567',            // PLACEHOLDER — WhatsApp digits, no +
  whatsappMessage: 'Hello TSK Ceylon, I would like a quote for fire extinguishers.',
  email: 'info@tskceylon.lk',               // PLACEHOLDER — real email
  address: {
    street: 'No. 1, Main Street',           // PLACEHOLDER
    city: 'Colombo',                        // PLACEHOLDER
    region: 'Western Province',             // PLACEHOLDER
    postalCode: '00100',                    // PLACEHOLDER
    country: 'Sri Lanka',
  },
  geo: { lat: 6.9271, lng: 79.8612 },       // PLACEHOLDER — shop coordinates
  // PLACEHOLDER — replace with the Google Maps "Embed a map" iframe src for the real address
  mapEmbedUrl:
    'https://www.google.com/maps?q=Colombo,Sri%20Lanka&output=embed',
  hours: [
    { days: 'Monday – Friday', hours: '8:30 AM – 5:30 PM' },
    { days: 'Saturday', hours: '9:00 AM – 1:00 PM' },
    { days: 'Sunday & Holidays', hours: 'Closed' },
  ],
  openingHours: [
    { days: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'], opens: '08:30', closes: '17:30' },
    { days: ['Saturday'], opens: '09:00', closes: '13:00' },
  ],
  nav: [
    { label: 'Home', href: '/' },
    { label: 'Products', href: '/products' },
    { label: 'Services', href: '/services' },
    { label: 'About', href: '/about' },
    { label: 'Contact', href: '/contact' },
  ],
  // PLACEHOLDER — free key from https://web3forms.com (no account; arrives by email).
  // Web3Forms access keys are designed to be public/client-side safe.
  web3formsAccessKey: 'REPLACE_WITH_WEB3FORMS_ACCESS_KEY',
};
