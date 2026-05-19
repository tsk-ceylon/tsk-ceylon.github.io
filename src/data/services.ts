import type { Service } from './types';

export const services: Service[] = [
  {
    slug: 'refilling',
    name: 'Refilling & Recharging',
    description: 'Fast refilling and recharging of all extinguisher types and brands.',
    points: ['All types & brands', 'Pickup & delivery available', 'Pressure-tested before return'],
  },
  {
    slug: 'maintenance',
    name: 'Annual Maintenance & Inspection',
    description: 'Scheduled inspections that keep your premises compliant and audit-ready.',
    points: ['Compliance documentation', 'Service tags & logbook', 'Reminder before next due date'],
  },
  {
    slug: 'installation',
    name: 'Supply & Installation',
    description: 'Site survey, correct extinguisher selection, wall mounting and signage.',
    points: ['On-site fire-risk survey', 'Correct type per area', 'Brackets, stands & signage'],
  },
  {
    slug: 'training',
    name: 'Fire Safety Training',
    description: 'Hands-on staff training on extinguisher use and evacuation basics.',
    points: ['Practical demonstrations', 'On your premises', 'Certificate of attendance'],
  },
];
