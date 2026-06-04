import type { Service } from './types';

export const services: Service[] = [
  {
    slug: 'refilling',
    name: 'Refilling & Recharging',
    description: 'Fast refilling and recharging of all extinguisher types and brands.',
    points: ['All types & brands', 'Pickup & delivery available', 'Pressure-tested before return'],
    category: 'core',
  },
  {
    slug: 'maintenance',
    name: 'Annual Maintenance & Inspection',
    description: 'Scheduled inspections that keep your premises compliant and ready for audit.',
    points: ['Compliance documentation', 'Service tags & logbook', 'Reminder before next due date'],
    category: 'core',
  },
  {
    slug: 'installation',
    name: 'Supply & Installation',
    description: 'Site survey, correct extinguisher selection, wall mounting and signage.',
    points: ['On-site fire-risk survey', 'Correct type per area', 'Brackets, stands & signage'],
    category: 'core',
  },
  {
    slug: 'training',
    name: 'Fire Safety Training',
    description: 'Hands-on staff training on extinguisher use and evacuation basics.',
    points: ['Practical demonstrations', 'On your premises', 'Certificate of attendance'],
    category: 'core',
  },
  {
    slug: 'consultation',
    name: 'Consultation',
    description: 'Expert guidance on the right fire-protection equipment for your building, industry and risk profile.',
    points: ['Building & risk assessment', 'Correct type per area', 'Budget-aware recommendations'],
    category: 'advisory',
  },
  {
    slug: 'fire-design',
    name: 'Fire System Design',
    description: 'Professional fire-protection system design tailored to your building type, occupancy and safety requirements.',
    points: ['Compliance-led design', 'Tailored to occupancy', 'Works with your contractors'],
    category: 'advisory',
  },
];
