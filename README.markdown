I'm still trying to wrap my head fully around how to structure these repos properly.

I figure I can put 'vendor' platforms (core(PressFlow)+profile(ManagingNews)) here for now.

Proposed structure for repos:
 * Vendor: X (i.e., Koumbit, Development Seed, Funny Monkey):
   * Platform makefiles (just includes of PressFlow core + profile .makes)
   * Profile makefiles (track HEAD, CURRENT from CVS/Git)
   * Features (?)
 * Ergon Logic:
   * Platform makefiles (just includes of PressFlow core + profile .makes)
   * Profile .info/makefiles (Move as much as possible to Profiler-style)
   * Feature tweaks (features to enhance/override vendor features)
   * Custom features
   * Security settings features (PRIVATE)

So, this would look something like:
 - Vendors:
   - Development Seed:
     - Platforms:
       - Open Atrium CURRENT
       - Managing News CURRENT
       - ...
     - Profiles:
       - Open Atrium HEAD
       - Open Atrium CURRENT
       - Managing News HEAD
       - Managing News CURRENT
       - ...
   - Funny Monkey:
     - Platforms:
       - VoiceBox CURRENT
       - ...
     - Profiles:
       - VoiceBox HEAD
       - VoiceBox CURRENT
       - ...
   - Koumbit:
     - Platforms:
       - Hostmaster CURRENT
       - ...
   - Phase II:
     - Platforms:
       - Tattler
       - Open Publish
       - ...
   - Green Bee (Mig5):
     - Platforms:
       - Feature Server
   - Four Kitchens:
     - Platforms:
       - PressFlow


