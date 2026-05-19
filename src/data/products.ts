import type { Product } from './types';

export const products: Product[] = [
  {
    slug: 'dcp',
    name: 'Dry Powder (DCP / ABC)',
    shortName: 'Dry Powder',
    fireClasses: 'Class A, B, C',
    useCases: 'Offices, vehicles, electrical, general-purpose',
    sizes: '1 kg · 2 kg · 4 kg · 6 kg · 9 kg',
    description:
      'The most versatile extinguisher — tackles solids, flammable liquids and gas fires. The standard choice for most premises.',
  },
  {
    slug: 'co2',
    name: 'Carbon Dioxide (CO₂)',
    shortName: 'CO₂',
    fireClasses: 'Class B, electrical',
    useCases: 'Server rooms, labs, electrical equipment',
    sizes: '2 kg · 3 kg · 5 kg',
    description:
      'Leaves no residue — ideal around sensitive electronics and electrical equipment where powder would cause damage.',
  },
  {
    slug: 'foam',
    name: 'Foam (AFFF)',
    shortName: 'Foam',
    fireClasses: 'Class A, B',
    useCases: 'Warehouses, fuel stores, workshops',
    sizes: '6 L · 9 L',
    description:
      'Smothers flammable-liquid fires and cools solid-material fires, preventing re-ignition.',
  },
  {
    slug: 'water',
    name: 'Water',
    shortName: 'Water',
    fireClasses: 'Class A',
    useCases: 'Schools, offices, textile and paper storage',
    sizes: '6 L · 9 L',
    description:
      'Economical and effective on ordinary combustibles such as wood, paper and textiles.',
  },
  {
    slug: 'wet-chemical',
    name: 'Wet Chemical',
    shortName: 'Wet Chemical',
    fireClasses: 'Class F (cooking oils)',
    useCases: 'Commercial kitchens, restaurants, hotels',
    sizes: '3 L · 6 L',
    description:
      'Purpose-built for deep-fat fryer and cooking-oil fires in commercial kitchens.',
  },
];
