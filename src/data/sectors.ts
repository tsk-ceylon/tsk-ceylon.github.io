import type { Sector } from './types';

// Industries we serve, from the company profile. Used on the home page to show
// breadth of experience and to surface sector keywords for search.

export const sectors: Sector[] = [
  { name: 'Commercial buildings', blurb: 'Offices, business centres and multi-storey complexes.' },
  { name: 'Industrial & manufacturing', blurb: 'Factories and plants — protecting workers, equipment and assets.' },
  { name: 'Retail & shopping centres', blurb: 'Shops and malls, with equipment and maintenance for public safety.' },
  { name: 'Educational institutions', blurb: 'Schools, colleges and training centres — equipment and staff training.' },
  { name: 'Healthcare facilities', blurb: 'Hospitals, clinics and medical centres — protecting patients and staff.' },
  { name: 'Hotels & hospitality', blurb: 'Hotels, resorts and restaurants that protect guests and employees.' },
  { name: 'Government & public sector', blurb: 'Public buildings and infrastructure — quality equipment and servicing.' },
  { name: 'Residential complexes', blurb: 'Apartments and housing — extinguishers and safety equipment for families.' },
];
