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
   * .dotfiles
   * SQL dumps (?... PRIVATE)
   * Puppet files (?... PRIVATE)

So, this would look something like:

- Vendors:
   - Development Seed:
     - platform-OpenAtrium-CURRENT.make
     - platform-ManagingNews-CURRENT.make
     - profile-OpenAtrium-HEAD.make
     - profile-OpenAtrium-CURRENT.make
     - profile-ManagingNews-HEAD.make
     - profile-ManagingNews-CURRENT.make
     - ...
   - Funny Monkey:
     - platform-VoiceBox-CURRENT.make
     - profile-VoiceBox-HEAD.make
     - profile-VoiceBox-CURRENT.make
     - ...

... or possibly in directories, but then filenames are potentially duplicated:
   - Koumbit:
     - Platforms:
       - Hostmaster CURRENT
       - ...
     - Profiles:
       - kt_brochure
       - ...
     - Features:
       - kt_bookmarks
       - ...
   - Phase II:
     - Platforms:
       - Tattler
       - Open Publish
       - ...
   - Green Bee (Mig5):
     - Platforms:
       - Feature Server
       - ...
   - Four Kitchens:
     - Platforms:
       - PressFlow
       - ...

