// http://182.93.95.238:8084/api/v1

import 'package:awaj/features/main/health_information/health_information.dart';
import 'package:awaj/features/main/health_information/models/government_announcement_model.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

final List<Announcement> announcements = [
  Announcement(
    collectionId: 'annc-2024-001',
    title: 'Free Diabetes Screening Campaign',
    fullSummary: 'Government launches free diabetes checkups nationwide',
    content: '''
**Ministry of Health and Population Announcement**

Free diabetes screening will be available at all government health posts from:
📅 June 10-30, 2024
⏰ 9AM-3PM daily

**Eligibility:**
- All citizens above 35 years
- No appointment needed
- Fasting not required

**Locations:**
- All district hospitals
- Primary health centers
- Selected urban health clinics

**Early detection prevents complications!**''',
    priority: [],
    created: DateTime(2024, 5, 25),
  ),
  Announcement(
    collectionId: 'annc-2024-002',
    title: 'EMERGENCY: Dengue Outbreak Alert',
    fullSummary: 'Dengue cases rising in Kathmandu Valley - Prevention guidelines issued',
    content: '''
🚨 **URGENT PUBLIC HEALTH NOTICE** 🚨

Due to rising dengue cases in:
- Kathmandu
- Lalitpur
- Bhaktapur

**Immediate actions required:**
1. Eliminate standing water
2. Use mosquito nets
3. Wear full-sleeve clothing
4. Report fever immediately

**Symptoms:**
- High fever (104°F+)
- Severe headache
- Muscle/joint pain
- Rash

**Emergency Hotline:** 1115 (24/7)''',
    priority: [],
    created: DateTime(2024, 5, 20),
  ),
  Announcement(
    collectionId: 'annc-2024-003',
    title: 'National Vaccination Drive',
    fullSummary: 'Measles-Rubella vaccination for children 9 months to 15 years',
    content: '''
💉 **National Immunization Program Update**

**Vaccines Available:**
1. MR Vaccine (Measles-Rubella)
2. DPT-HepB-Hib
3. Polio drops

**Schedule:**
🗓️ June 1 - July 15, 2024
📍 All government health facilities

**Required Documents:**
- Child's birth certificate
- Vaccination card
- Citizenship (parent/guardian)''',
    priority: [],
    created: DateTime(2024, 5, 15),
  ),
  Announcement(
    collectionId: 'annc-2024-004',
    title: 'Health Insurance Scheme Expansion',
    fullSummary: 'New benefits added to national health insurance',
    content: '''
🏥 **Health Insurance Board Update**

**New Coverage (Effective July 2024):**
- Chronic disease medicines (up to Rs. 25,000/year)
- Mental health counseling (10 sessions/year)
- Emergency ambulance services

**Premium:**
- Rs. 3,500/year (general)
- Rs. 1,750/year (senior citizens)

**Enrollment Centers:**
- All ward offices
- Major hospitals
- Online portal: hi.gov.np''',
    priority: [],
    created: DateTime(2024, 5, 10),
  ),
  Announcement(
    collectionId: 'annc-2024-005',
    title: 'Monsoon Health Advisory',
    fullSummary: 'Preventive measures for monsoon-related diseases',
    content: '''
🌧️ **Monsoon Preparedness Guidelines**

**Common Diseases:**
1. Waterborne (Cholera, Typhoid)
   - Drink only boiled/treated water
   - Avoid street food

2. Vector-borne (Malaria, Dengue)
   - Use mosquito nets
   - Wear repellents

3. Respiratory Infections
   - Keep living spaces dry
   - Wash hands frequently

**Emergency Contacts:**
- Health Hotline: 1115
- Ambulance: 102''',
    priority: [],
    created: DateTime(2024, 5, 5),
  ),
  Announcement(
    collectionId: 'annc-2024-006',
    title: 'New Hospital Inauguration',
    fullSummary: '200-bed specialized hospital opens in Bharatpur',
    content: '''
🏨 **New Healthcare Facility Alert**

**Bharatpur Provincial Hospital Now Offers:**
- 24/7 emergency services
- Cardiac care unit
- Maternal-child health wing
- Free services for below-poverty-line patients

**Location:**
Narayangadh-Muglin Road, Bharatpur

**OPD Hours:**
9AM-4PM (Sun-Fri)''',
    priority: [],
    created: DateTime(2024, 4, 28),
  ),
  Announcement(
    collectionId: 'annc-2024-007',
    title: 'Mental Health Helpline Launch',
    fullSummary: '24/7 counseling service now available',
    content: '''
🧠 **Mental Health Initiative**

**Toll-Free Service:**
📞 1660-01-54321 (24/7)

**Services:**
- Depression/anxiety counseling
- Crisis intervention
- Referrals to specialists

**Languages:**
- Nepali
- Maithili
- Bhojpuri
- English''',
    priority: [],
    created: DateTime(2024, 4, 20),
  ),
];
final List<HealthTip> healthTips = [
  HealthTip(
    collectionId: '1',
    title: 'Stay Hydrated',
    fullSummary: 'Proper hydration is essential for good health',
    content: '''
Drinking enough water daily helps:

- Maintain body temperature
- Lubricate joints
- Prevent infections
- Deliver nutrients to cells
- Keep organs functioning properly

Recommendations:
- Drink at least 2-3 liters per day
- Increase intake during hot weather
- Include water-rich fruits like watermelon
- Reduce caffeine and alcohol''',
    icon: Icons.local_drink,
    color: Colors.blue,
    created: DateTime(2024, 5, 18),
  ),
  HealthTip(
    collectionId: '2',
    title: 'Balanced Diet',
    fullSummary: 'Essential nutrients for daily meals',
    content: '''
A healthy plate should contain:

1. 50% Vegetables and fruits
   - Leafy greens
   - Seasonal fruits
   - Colorful vegetables

2. 25% Whole grains
   - Brown rice
   - Whole wheat
   - Oats

3. 25% Protein
   - Lentils and beans
   - Lean meat
   - Dairy products

Tips:
- Limit processed foods
- Reduce salt and sugar
- Eat smaller portions more frequently''',
    icon: Icons.restaurant,
    color: Colors.green,
    created: DateTime(2024, 5, 15),
  ),
  HealthTip(
    collectionId: '3',
    title: 'Daily Exercise',
    fullSummary: 'Benefits of regular physical activity',
    content: '''
30 minutes of daily exercise can:

- Strengthen your heart
- Improve mental health
- Boost energy levels
- Help maintain healthy weight
- Reduce risk of chronic diseases

Simple exercises to start:
- Brisk walking
- Cycling
- Yoga
- Swimming
- Home workouts

Remember:
- Start slowly if you're new
- Stay consistent
- Listen to your body''',
    icon: Icons.directions_run,
    color: Colors.orange,
    created: DateTime(2024, 5, 12),
  ),
  HealthTip(
    collectionId: '4',
    title: 'Sleep Hygiene',
    fullSummary: 'Tips for better sleep quality',
    content: '''
Good sleep habits include:

1. Consistent schedule
   - Go to bed and wake up at same time daily
   - Aim for 7-9 hours

2. Bedroom environment
   - Cool, dark and quiet
   - Comfortable mattress
   - No electronic devices

3. Daily habits
   - Limit caffeine after noon
   - Avoid heavy meals before bed
   - Relaxing bedtime routine

Benefits:
- Improved memory
- Stronger immunity
- Better mood
- Reduced stress''',
    icon: Icons.bedtime,
    color: Colors.purple,
    created: DateTime(2024, 5, 10),
  ),
  HealthTip(
    collectionId: '5',
    title: 'Stress Management',
    fullSummary: 'Techniques to reduce daily stress',
    content: '''
Effective stress relief methods:

1. Breathing exercises
   - 4-7-8 technique
   - Box breathing
   - Diaphragmatic breathing

2. Mindfulness practices
   - Meditation
   - Yoga
   - Journaling

3. Physical activities
   - Walking in nature
   - Dancing
   - Stretching

Warning signs of excessive stress:
- Headaches
- Irritability
- Sleep problems
- Fatigue''',
    icon: Icons.self_improvement,
    color: Colors.teal,
    created: DateTime(2024, 5, 8),
  ),
];
