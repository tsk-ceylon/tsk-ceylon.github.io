export type PageType = 'home' | 'contact' | 'products' | 'services' | 'about' | 'other';

export interface NavItem { label: string; href: string; }
export interface BusinessHours { days: string; hours: string; }
export interface OpeningHoursSpec { days: string[]; opens: string; closes: string; }

export interface SiteConfig {
  name: string;
  legalName: string;
  tagline: string;
  slogan: string;
  description: string;
  url: string;
  phoneDisplay: string;
  phoneHref: string;        // tel: value, e.g. +94112345678
  whatsappNumber: string;   // digits only, e.g. 94771234567
  whatsappMessage: string;
  email: string;
  address: { street: string; city: string; region: string; postalCode: string; country: string; };
  geo: { lat: number; lng: number; };
  mapEmbedUrl: string;
  hours: BusinessHours[];
  openingHours: OpeningHoursSpec[];
  nav: NavItem[];
  web3formsAccessKey: string;
  googleSiteVerification?: string;
  gtagId?: string;
}

export interface Product {
  slug: string;
  name: string;
  shortName: string;
  fireClasses: string;
  useCases: string;
  sizes: string;
  description: string;
}

export interface Service {
  slug: string;
  name: string;
  description: string;
  points: string[];
  category?: 'core' | 'advisory';   // 'core' services have artwork; 'advisory' render as text cards
}

/** A named company value or selling point: short title + one-line blurb. */
export interface Value { title: string; blurb: string; }

/** An industry/sector the company serves. */
export interface Sector { name: string; blurb: string; }

/** A frequently-asked question and its answer (plain text; rendered as HTML-safe string). */
export interface Faq { q: string; a: string; }

/** Non-extinguisher safety products, shown as a single grouped card. */
export interface Accessories { title: string; intro: string; items: string[]; note: string; }
