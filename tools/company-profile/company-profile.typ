#import "template.typ": *

#show: conf

// ─────────────────────────────────────────────────────────────────────────────
// Page 1 — Cover
// ─────────────────────────────────────────────────────────────────────────────

#page(header: none, footer: none, margin: (x: 18mm, y: 24mm))[
  #v(1fr)
  #align(center)[
    #text(size: 64pt, weight: 900, fill: navy)[TSK]
    #text(size: 64pt, weight: 900, fill: red)[ CEYLON]
    #v(0.2em)
    #text(size: 11pt, weight: "bold", tracking: 5pt, fill: muted)[
      #upper(site.legalName)
    ]
    #v(1.8em)
    #box(width: 90pt, height: 2.5pt, fill: red)
    #v(0.4em)
    #text(size: 36pt, weight: 900, fill: navy)[COMPANY PROFILE]
    #v(0.4em)
    #box(width: 90pt, height: 2.5pt, fill: red)
    #v(2em)
    #text(size: 16pt, weight: "bold", fill: navy)[
      Your Trusted Partner in Fire Safety Solutions
    ]
    #v(0.6em)
    #text(size: 13pt, fill: muted, style: "italic")[
      Safety Today, Secure Tomorrow
    ]
    #v(2.4em)
    #block(
      fill: navy, width: 78%,
      inset: (x: 20pt, y: 16pt),
      radius: 6pt,
    )[
      #set text(fill: white, size: 10.5pt)
      #set par(leading: 0.85em)
      #align(left)[
        *Phone* #h(8pt) #site.phoneDisplay \
        *Email* #h(8pt) #site.email \
        *Address* #h(8pt) #site.address.street, #site.address.city,
        #site.address.region #site.address.postalCode, #site.address.country
      ]
    ]
  ]
  #v(1fr)
]

// ─────────────────────────────────────────────────────────────────────────────
// Page 2 — About Us
// ─────────────────────────────────────────────────────────────────────────────

#split-title("ABOUT", "US")
#eyebrow("Company Overview")
#v(0.6em)

*#site.legalName* is a Sri Lanka–based company specializing in the supply,
distribution, and servicing of fire safety equipment and industrial safety
solutions. The company was established with the vision of providing reliable
and high-quality fire protection products to businesses, institutions, and
households throughout Sri Lanka.

At TSK Ceylon, safety is our highest priority. We understand the importance of
protecting lives, property, and businesses from fire-related risks. We are
committed to delivering dependable fire safety solutions that meet modern
safety standards and customer expectations.

Our company focuses on customer satisfaction, quality assurance, and long-term
business relationships. Through professional service, affordable pricing, and
a commitment to excellence, TSK Ceylon aims to become one of the leading names
in the fire safety industry in Sri Lanka.

We continue to expand our product range and services to meet the growing
demands of commercial, industrial, and residential sectors.

#v(1.4em)
#eyebrow("Our Four Pillars")
#v(0.6em)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 12pt,
  pillar("◆", "Safety Focus",
    [Protecting lives, property, and businesses through effective fire safety solutions.]),
  pillar("●", "Customer Satisfaction",
    [Exceeding customer expectations with quality products and reliable services.]),
  pillar("★", "Quality Assurance",
    [Supplying quality-tested products and dependable services that meet industry standards.]),
  pillar("▲", "Continuous Growth",
    [Expanding our capabilities and improving our services for a safer tomorrow.]),
)

#pagebreak()

// ─────────────────────────────────────────────────────────────────────────────
// Page 3 — Vision, Mission & Core Values
// ─────────────────────────────────────────────────────────────────────────────

#split-title("VISION, MISSION", "& CORE VALUES")

At *#site.legalName*, our vision, mission and core values guide everything we
do. They reflect our commitment to safety, quality, and the trust of our
customers.

#v(1em)
#two-col(
  navy-header-card("Our Vision",
    [To become a trusted and leading provider of fire safety solutions in Sri
     Lanka by delivering reliable products, professional services, and
     innovative safety solutions that protect lives and property.]),
  red-header-card("Our Mission",
    [To provide high-quality fire safety equipment and dependable customer
     service at affordable prices while maintaining strong safety standards,
     professionalism, and customer trust.]),
)

#v(1.4em)
#eyebrow("Our Core Values")
#v(0.6em)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  gutter: 10pt,
  pillar("◆", "Safety First",
    [Safety is at the centre of everything we do — protecting people, businesses, and property.]),
  pillar("●", "Customer Trust",
    [Honesty, reliability, and strong relationships are central to our work.]),
  pillar("★", "Quality Assurance",
    [Quality-tested products and dependable services that meet industry expectations.]),
  pillar("◆", "Reliability",
    [Consistent, professional, and timely services for every client.]),
  pillar("⚖", "Integrity",
    [Professionalism, transparency, and ethical responsibility in everything we do.]),
)

#v(1.2em)
#navy-quote([
  Our values are the foundation of our business and the reason our customers
  trust us for their fire safety needs.
])

#pagebreak()

// ─────────────────────────────────────────────────────────────────────────────
// Page 4 — Nature of Business
// ─────────────────────────────────────────────────────────────────────────────

#split-title("NATURE", "OF BUSINESS")

*#site.legalName* operates mainly in the field of fire protection and
industrial safety solutions. We provide products and services designed to
improve workplace and environmental safety.

#v(1em)
#two-col(
  [
    #eyebrow("Service Lines")
    #v(0.4em)
    #value-card("1. Fire Safety Equipment Supply",
      [Fire extinguishers and related fire protection equipment for homes,
       offices, factories, shops, warehouses, and industrial facilities.])
    #v(6pt)
    #value-card("2. Fire Extinguisher Sales & Refilling",
      [New fire extinguishers and professional refilling services to keep
       equipment functional and compliant with safety requirements.])
    #v(6pt)
    #value-card("3. Safety Signage & Stickers",
      [Safety stickers, warning labels, and fire safety signage to help
       organizations maintain safety awareness and compliance.])
    #v(6pt)
    #value-card("4. Industrial & Commercial Safety Solutions",
      [Safety-related products and consultation services tailored to
       commercial and industrial fire protection requirements.])
    #v(6pt)
    #value-card("5. Installation & Maintenance Services",
      [Installation support and maintenance guidance for fire safety
       equipment, on-site and off.])
  ],
  red-header-card("Our Key Focus",
    checklist((
      [Improving fire safety standards],
      [Reducing fire-related risks],
      [Providing quality products and services],
      [Ensuring customer satisfaction],
      [Creating a safer environment for businesses and communities],
    ))),
)

#v(1.2em)
#eyebrow("Our Business Promise")
#v(0.6em)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  gutter: 10pt,
  pillar("◆", "Safety",
    [We prioritize safety in every solution we offer.]),
  pillar("★", "Quality",
    [Quality-tested products and dependable services.]),
  pillar("●", "Professionalism",
    [Professional support with integrity and responsibility.]),
  pillar("◐", "Reliability",
    [Committed to timely service and customer trust.]),
  pillar("⚐", "Partnership",
    [Building long-term relationships with our customers.]),
)

#pagebreak()

// ─────────────────────────────────────────────────────────────────────────────
// Page 5 — Products & Services
// ─────────────────────────────────────────────────────────────────────────────

#split-title("PRODUCTS &", "SERVICES")

*#site.legalName* offers a comprehensive range of high-quality fire safety
products and reliable services to ensure safety, protection, and peace of
mind.

#v(0.8em)
#two-col(
  [
    #red-header-card("Our Products", [
      #text(weight: 900, fill: navy, size: 10pt)[FIRE EXTINGUISHERS]
      #v(0.3em)
      #table(
        columns: (1fr, 1fr),
        stroke: 0.5pt + line-color,
        inset: 6pt,
        align: left,
        text(weight: "bold")[ABC Powder], [Class A, B, C — general-purpose],
        text(weight: "bold")[CO₂], [Class B and electrical equipment],
        text(weight: "bold")[Foam (AFFF)], [Class A, B — flammable liquids],
        text(weight: "bold")[Water], [Class A — ordinary combustibles],
        text(weight: "bold")[Portable], [Compact units for small spaces],
      )
      #v(0.6em)
      #text(weight: 900, fill: navy, size: 10pt)[SAFETY EQUIPMENT]
      #v(0.3em)
      • Safety signs & warning boards \
      • Fire safety stickers \
      • Emergency safety accessories \
      • Industrial safety products
      #v(0.6em)
      #text(weight: 900, fill: navy, size: 10pt)[PRODUCT HIGHLIGHTS]
      #v(0.3em)
      #checklist((
        [High-quality and certified products],
        [Suitable for all types of environments],
        [Durable, reliable, and safety-tested],
        [Available in different sizes and specifications],
        [Designed to meet modern safety requirements],
      ))
    ])
  ],
  [
    #navy-header-card("Our Services", [
      #value-card("1. Fire Extinguisher Refilling",
        [Refilling services with proper inspection and maintenance to safety standards.])
      #v(5pt)
      #value-card("2. Inspection & Maintenance",
        [Regular checks to keep equipment in proper working condition and ready for emergency use.])
      #v(5pt)
      #value-card("3. Consultation Services",
        [Guidance for businesses on selecting suitable fire protection equipment.])
      #v(5pt)
      #value-card("4. Customer Support",
        [Responsive customer service, technical support, and after-sales assistance.])
      #v(5pt)
      #value-card("5. Fire Design",
        [Professional fire protection system design tailored to building type and safety requirements.])
      #v(5pt)
      #value-card("6. Fire Training",
        [Fire safety training programs to educate staff for emergencies and safe evacuation.])
    ])
  ],
)

#v(0.8em)
#navy-quote([
  Quality Products. Professional Services. Complete Safety Solutions.
])

#pagebreak()

// ─────────────────────────────────────────────────────────────────────────────
// Page 6 — Sectors We Serve
// ─────────────────────────────────────────────────────────────────────────────

#split-title("SECTORS WE", "SERVE")

*#site.legalName* provides reliable fire safety products and professional
services to a wide range of sectors. Our solutions are tailored to meet the
unique safety requirements of each industry we serve.

#v(0.8em)
#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  row-gutter: 10pt,
  value-card("Commercial Buildings", accent: navy,
    [Office buildings, business centres, and multi-storey complexes — fire
     safety equipment for safe working environments.]),
  value-card("Industrial & Manufacturing", accent: red,
    [Factories and manufacturing plants — solutions to protect workers,
     equipment, and assets from fire hazards.]),
  value-card("Retail & Shopping Centres", accent: navy,
    [Retail outlets and shopping complexes — fire protection systems,
     equipment, and maintenance for public safety.]),
  value-card("Educational Institutions", accent: red,
    [Schools, colleges, and training centres — equipment and training
     programs for a safer learning environment.]),
  value-card("Healthcare Facilities", accent: navy,
    [Hospitals, clinics, and medical centres — reliable solutions to protect
     patients and staff.]),
  value-card("Hotels & Hospitality", accent: red,
    [Hotels, resorts, and restaurants — systems and services that protect
     guests and employees at all times.]),
  value-card("Government & Public Sector", accent: navy,
    [Government offices, public buildings, and infrastructure — quality
     equipment and maintenance services.]),
  value-card("Residential Complexes", accent: red,
    [Residential complexes and apartments — extinguishers, alarms, and
     safety equipment to protect families and property.]),
)

#v(1em)
#block(
  fill: navy, width: 100%,
  inset: (x: 14pt, y: 12pt),
  radius: 4pt,
)[
  #set text(fill: white)
  #align(center)[
    #grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      gutter: 10pt,
      [#text(size: 9.5pt, weight: 900, fill: white)[COMMITTED TO\ EVERY SECTOR]],
      [#text(size: 9.5pt, weight: 900, fill: white)[DIVERSE INDUSTRY\ EXPERIENCE]],
      [#text(size: 9.5pt, weight: 900, fill: white)[TAILORED SAFETY\ SOLUTIONS]],
      [#text(size: 9.5pt, weight: 900, fill: white)[FOCUS ON SAFETY,\ ALWAYS]],
    )
  ]
]

#v(0.8em)
#align(center)[
  #text(size: 11pt, weight: 900, fill: navy)[
    WHEREVER YOU ARE, WHATEVER YOUR INDUSTRY, \
    TSK CEYLON IS YOUR FIRE SAFETY PARTNER.
  ]
  #v(0.3em)
  #text(size: 10pt, fill: muted)[
    We deliver solutions that protect lives, property, and businesses across Sri Lanka.
  ]
]

#pagebreak()

// ─────────────────────────────────────────────────────────────────────────────
// Page 7 — Competitive Advantages
// ─────────────────────────────────────────────────────────────────────────────

#split-title("COMPETITIVE", "ADVANTAGES")
#text(size: 13pt, weight: 900, fill: navy)[Why Choose TSK Ceylon?]
#v(0.4em)

At *#site.legalName*, we focus on delivering value, quality, and reliability
through our products, services, and customer relationships.

#v(0.8em)
#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  row-gutter: 10pt,
  numbered-card("01", "High-Quality Products",
    [Dependable, quality-tested fire safety products that comply with industry standards for maximum protection.],
    accent: navy),
  numbered-card("04", "Fast Response",
    [Our team is committed to responding quickly to customer inquiries, orders, and service requests.],
    accent: red),
  numbered-card("02", "Affordable Pricing",
    [Cost-effective fire safety solutions without compromising on quality, helping you stay safe within budget.],
    accent: navy),
  numbered-card("05", "Long-Term Relationships",
    [Strong partnerships based on trust, honesty, and consistent support. We grow with our customers.],
    accent: red),
  numbered-card("03", "Professional Service",
    [Customer-focused approach with experienced staff, friendly communication, and dependable service.],
    accent: navy),
  numbered-card("06", "Commitment to Safety",
    [Every product and service focused on improving safety standards and reducing fire-related risks.],
    accent: red),
)

#v(1em)
#block(
  fill: surface,
  stroke: 0.5pt + line-color,
  inset: 12pt, radius: 4pt, width: 100%,
)[
  #text(size: 11pt, weight: 900, fill: navy)[YOUR SAFETY IS OUR PRIORITY]
  #v(0.4em)
  #checklist((
    [Reliable products you can trust],
    [Professional team you can rely on],
    [Solutions that fit your needs],
    [Support that continues beyond the sale],
    [A partner committed to a safer Sri Lanka],
  ))
]

#v(0.8em)
#quote-band([
  Quality is our strength. Safety is our commitment. You are our priority.
])

#pagebreak()

// ─────────────────────────────────────────────────────────────────────────────
// Page 8 — Commitment & Future Development
// ─────────────────────────────────────────────────────────────────────────────

#split-title("COMMITMENT &", "FUTURE DEVELOPMENT")

At *#site.legalName*, our commitment goes beyond today. We continuously invest
in our people, products, and services to build a safer tomorrow for Sri Lanka.

#v(0.8em)
#two-col(
  red-header-card("Our Commitment", [
    We are committed to protecting lives, property, and the environment by
    delivering reliable fire safety solutions.
    #v(0.5em)
    #value-card("Safety First", accent: navy,
      [We prioritize safety in our products, services, and workplace.])
    #v(4pt)
    #value-card("Quality Assured", accent: navy,
      [Only the best quality, tested and trusted products.])
    #v(4pt)
    #value-card("Responsible Business", accent: navy,
      [Ethical business practices that care for community and environment.])
    #v(4pt)
    #value-card("Customer Satisfaction", accent: navy,
      [We listen, understand, and deliver solutions that exceed expectations.])
    #v(4pt)
    #value-card("Continuous Improvement", accent: navy,
      [Constantly learning, innovating, and improving our systems and services.])
  ]),
  red-header-card("Our Future Development Plan", [
    #value-card("Expand Product Portfolio", accent: red,
      [Introducing advanced and innovative fire safety products to meet evolving industry needs.])
    #v(4pt)
    #value-card("Strengthen Partnerships", accent: red,
      [Stronger relationships with global brands, suppliers, and local partners.])
    #v(4pt)
    #value-card("Invest in Our People", accent: red,
      [Ongoing training and development to build a skilled, motivated team.])
    #v(4pt)
    #value-card("Expand Our Reach", accent: red,
      [Extending services across Sri Lanka and exploring regional opportunities.])
    #v(4pt)
    #value-card("Technology & Sustainability", accent: red,
      [Modern technologies and sustainable practices for smarter, greener solutions.])
  ]),
)

#v(0.8em)
#navy-quote([
  Together, we build a safer Sri Lanka.
])

#pagebreak()

// ─────────────────────────────────────────────────────────────────────────────
// Page 9 — Quality & Compliance
// ─────────────────────────────────────────────────────────────────────────────

#split-title("QUALITY &", "COMPLIANCE")

At *#site.legalName*, we believe that quality and reliability are essential in
the fire safety industry. Every product and service is carefully selected and
delivered with a strong focus on safety, durability, and customer confidence.

#v(0.8em)
#two-col(
  [
    #navy-header-card("Quality Standards", [
      We work closely with trusted suppliers and industry partners to ensure
      our customers receive dependable products that meet accepted safety
      standards. Our commitment to quality helps us build long-term trust and
      deliver consistent value to every customer we serve.
    ])
    #v(0.6em)
    #red-header-card("Our Quality Commitments", [
      #value-card("Supplying Quality-Tested Products", accent: navy,
        [Equipment selected from reliable manufacturers and quality-tested.])
      #v(4pt)
      #value-card("Maintaining Professional Standards", accent: navy,
        [Trained team delivering efficient, customer-focused services.])
      #v(4pt)
      #value-card("Ensuring Customer Satisfaction", accent: navy,
        [Listening, understanding, and delivering on customer expectations.])
      #v(4pt)
      #value-card("Dependable After-Sales Support", accent: navy,
        [Reliable support, maintenance guidance, and assistance when needed.])
      #v(4pt)
      #value-card("Proper Fire Safety Awareness", accent: navy,
        [Educating users on proper equipment usage and regular maintenance.])
    ])
  ],
  [
    #navy-header-card("Safety Compliance", [
      TSK Ceylon promotes the importance of proper fire safety practices in
      workplaces, commercial buildings, and residential environments.
      #v(0.5em)
      #checklist((
        [Regular inspection and maintenance of fire safety equipment],
        [Products meeting relevant safety requirements and industry expectations],
        [Supporting organisations in maintaining safe working environments],
        [Following best practices for reliability, safety, and compliance],
        [Committed to protecting lives, property, and businesses],
      ))
    ])
    #v(0.6em)
    #block(
      fill: surface,
      stroke: 0.5pt + line-color,
      inset: 14pt, radius: 4pt,
    )[
      #text(size: 11pt, weight: 900, fill: navy)[OUR QUALITY PHILOSOPHY]
      #v(0.3em)
      #text(size: 9.5pt, fill: ink)[
        Quality is not just a standard we follow — it is a promise we deliver.
        We are dedicated to continuous improvement, strong partnerships, and
        providing safe, reliable, and effective fire protection solutions.
      ]
    ]
  ],
)

#pagebreak()

// ─────────────────────────────────────────────────────────────────────────────
// Page 10 — Why Choose TSK Ceylon
// ─────────────────────────────────────────────────────────────────────────────

#split-title("WHY CHOOSE", "TSK CEYLON?")

At *#site.legalName*, we go beyond supplying products. We deliver complete
fire safety solutions backed by experience, dedication, and a customer-first
approach.

#v(0.8em)
#two-col(
  [
    #numbered-card("01", "Experience You Can Trust",
      [Industry knowledge and hands-on experience — solutions you can rely on.],
      accent: navy)
    #v(5pt)
    #numbered-card("02", "Quality Products",
      [High-quality, certified products from trusted brands meeting international standards.],
      accent: red)
    #v(5pt)
    #numbered-card("03", "Customer-Focused Approach",
      [We listen, understand, and provide solutions that meet your exact requirements.],
      accent: navy)
    #v(5pt)
    #numbered-card("04", "Fast & Reliable Service",
      [Quick response, on-time delivery, and efficient after-sales support.],
      accent: red)
    #v(5pt)
    #numbered-card("05", "Professional Team",
      [Trained, experienced team providing expert advice, installation, and maintenance.],
      accent: navy)
    #v(5pt)
    #numbered-card("06", "Competitive Pricing",
      [Cost-effective solutions without compromising on quality.],
      accent: red)
    #v(5pt)
    #numbered-card("07", "Commitment to Safety",
      [Protecting lives, property, and businesses with dependable solutions.],
      accent: navy)
  ],
  [
    #navy-header-card("The TSK Ceylon Difference",
      checklist((
        [One-stop fire safety solutions — from supply to support],
        [Wide range of products and services under one roof],
        [Solutions tailored to your industry and environment],
        [Strong focus on quality, safety, and compliance],
        [Long-term partnerships built on trust and integrity],
        [Dedicated to building a safer Sri Lanka],
      )))
    #v(0.8em)
    #block(
      fill: surface, stroke: 1pt + red,
      inset: 14pt, radius: 4pt,
    )[
      #set text(fill: red-dark)
      #align(center)[
        #text(size: 11pt, weight: 900, style: "italic")[
          " When it comes to fire safety, there is no room for compromise.
          Choose TSK Ceylon — Your Safety, Our Priority. "
        ]
      ]
    ]
    #v(0.8em)
    #block(
      fill: navy, width: 100%,
      inset: 12pt, radius: 4pt,
    )[
      #set text(fill: white)
      *YOUR TRUST. OUR RESPONSIBILITY.* \
      #v(0.2em)
      #text(size: 9pt)[
        We are not just a supplier — we are your partner in creating safer
        environments for today and a secure tomorrow.
      ]
    ]
  ],
)

#pagebreak()

// ─────────────────────────────────────────────────────────────────────────────
// Page 11 — Contact Information
// ─────────────────────────────────────────────────────────────────────────────

#split-title("CONTACT", "INFORMATION")

We are always ready to serve you with reliable products, professional
services, and expert support.

*Get in touch with TSK Ceylon today!*

#v(0.8em)
#two-col(
  red-header-card("Get in Touch", [
    #grid(
      columns: (auto, 1fr),
      gutter: 10pt,
      row-gutter: 8pt,
      align: (left, left),
      text(size: 9pt, weight: 900, fill: navy)[ADDRESS],
      text(size: 9.5pt)[#site.address.street, #site.address.city, #site.address.region #site.address.postalCode, #site.address.country],
      text(size: 9pt, weight: 900, fill: navy)[PHONE],
      text(size: 9.5pt)[#site.phoneDisplay],
      text(size: 9pt, weight: 900, fill: navy)[EMAIL],
      text(size: 9.5pt)[#site.email],
      text(size: 9pt, weight: 900, fill: navy)[WEBSITE],
      text(size: 9.5pt)[#site.url.replace("https://", "")],
      text(size: 9pt, weight: 900, fill: navy)[FOLLOW US],
      text(size: 9.5pt)[Stay connected for updates and safety tips.],
    )
  ]),
  navy-header-card("Working Hours", [
    #table(
      columns: (1fr, auto),
      stroke: none,
      inset: (x: 0pt, y: 5pt),
      align: (left, right),
      text(weight: "bold")[Monday – Friday], [8:30 AM – 5:30 PM],
      text(weight: "bold")[Saturday], [8:30 AM – 1:00 PM],
      text(weight: "bold")[Sunday & Holidays], [By appointment],
    )
    #v(0.6em)
    #block(
      fill: red, width: 100%,
      inset: 10pt, radius: 4pt,
    )[
      #set text(fill: white)
      #align(center)[
        *24 / 7 EMERGENCY SUPPORT* \
        #text(size: 13pt, weight: 900)[#site.phoneDisplay]
      ]
    ]
  ]),
)

#v(0.8em)
#red-header-card("We Serve Across Sri Lanka",
  [From the North to the South and East to the West, we are committed to
   delivering safety solutions wherever you are.])

#v(0.8em)
#block(
  fill: surface,
  stroke: 1pt + navy,
  inset: 14pt, radius: 4pt, width: 100%,
)[
  #align(center)[
    #text(size: 14pt, weight: 900, fill: navy)[
      THANK YOU FOR CHOOSING #text(fill: red)[TSK CEYLON]
    ]
    #v(0.2em)
    #text(size: 10.5pt, style: "italic", fill: muted)[
      Your Safety is Our Priority.
    ]
    #v(0.4em)
    #text(size: 10pt, fill: ink)[
      Together, let's build a safer and secure Sri Lanka.
    ]
  ]
]

#v(0.6em)
#block(
  fill: navy, width: 100%,
  inset: 12pt, radius: 4pt,
)[
  #set text(fill: white, size: 9pt)
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    align: center,
    [*YOUR SAFETY* \ #text(size: 8pt, fill: rgb("#CBD5E1"))[Our Mission]],
    [*YOUR TRUST* \ #text(size: 8pt, fill: rgb("#CBD5E1"))[Our Motivation]],
    [*YOUR SATISFACTION* \ #text(size: 8pt, fill: rgb("#CBD5E1"))[Our Commitment]],
    [*A SAFER TOMORROW* \ #text(size: 8pt, fill: rgb("#CBD5E1"))[Our Goal]],
  )
]
