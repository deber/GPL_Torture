module gpl3_mod
!
!  First part of GPL-v3
!
   character(len = *), parameter :: gpl3_1=&
   "                    GNU GENERAL PUBLIC LICENSE" // new_line('a') // &
   "                       Version 3, 29 June 2007" // new_line('a') // &
   "" // new_line('a') // &
   " Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt;" // new_line('a') // &
   " Everyone is permitted to copy and distribute verbatim copies" // new_line('a') // &
   " of this license document, but changing it is not allowed." // new_line('a') // &
   "" // new_line('a') // &
   "                            Preamble" // new_line('a') // &
   "" // new_line('a') // &
   "  The GNU General Public License is a free, copyleft license for" // new_line('a') // &
   "software and other kinds of works." // new_line('a') // &
   "" // new_line('a') // &
   "  The licenses for most software and other practical works are designed" // new_line('a') // &
   "to take away your freedom to share and change the works.  By contrast," // new_line('a') // &
   "the GNU General Public License is intended to guarantee your freedom to" // new_line('a') // &
   "share and change all versions of a program--to make sure it remains free" // new_line('a') // &
   "software for all its users.  We, the Free Software Foundation, use the" // new_line('a') // &
   "GNU General Public License for most of our software; it applies also to" // new_line('a') // &
   "any other work released this way by its authors.  You can apply it to" // new_line('a') // &
   "your programs, too." // new_line('a') // &
   "" // new_line('a') // &
   "  When we speak of free software, we are referring to freedom, not" // new_line('a') // &
   "price.  Our General Public Licenses are designed to make sure that you" // new_line('a') // &
   "have the freedom to distribute copies of free software (and charge for" // new_line('a') // &
   "them if you wish), that you receive source code or can get it if you" // new_line('a') // &
   "want it, that you can change the software or use pieces of it in new" // new_line('a') // &
   "free programs, and that you know you can do these things." // new_line('a') // &
   "" // new_line('a') // &
   "  To protect your rights, we need to prevent others from denying you" // new_line('a') // &
   "these rights or asking you to surrender the rights.  Therefore, you have" // new_line('a') // &
   "certain responsibilities if you distribute copies of the software, or if" // new_line('a') // &
   "you modify it: responsibilities to respect the freedom of others." // new_line('a') // &
   "" // new_line('a') // &
   "  For example, if you distribute copies of such a program, whether" // new_line('a') // &
   "gratis or for a fee, you must pass on to the recipients the same" // new_line('a') // &
   "freedoms that you received.  You must make sure that they, too, receive" // new_line('a') // &
   "or can get the source code.  And you must show them these terms so they" // new_line('a') // &
   "know their rights." // new_line('a') // &
   "" // new_line('a') // &
   "  Developers that use the GNU GPL protect your rights with two steps:" // new_line('a') // &
   "(1) assert copyright on the software, and (2) offer you this License" // new_line('a') // &
   "giving you legal permission to copy, distribute and/or modify it." // new_line('a') // &
   "" // new_line('a') // &
   "  For the developers' and authors' protection, the GPL clearly explains" // new_line('a') // &
   "that there is no warranty for this free software.  For both users' and" // new_line('a') // &
   "authors' sake, the GPL requires that modified versions be marked as" // new_line('a') // &
   "changed, so that their problems will not be attributed erroneously to" // new_line('a') // &
   "authors of previous versions." // new_line('a') // &
   "" // new_line('a') // &
   "  Some devices are designed to deny users access to install or run" // new_line('a') // &
   "modified versions of the software inside them, although the manufacturer" // new_line('a') // &
   "can do so.  This is fundamentally incompatible with the aim of" // new_line('a') // &
   "protecting users' freedom to change the software.  The systematic" // new_line('a') // &
   "pattern of such abuse occurs in the area of products for individuals to" // new_line('a') // &
   "use, which is precisely where it is most unacceptable.  Therefore, we" // new_line('a') // &
   "have designed this version of the GPL to prohibit the practice for those" // new_line('a') // &
   "products.  If such problems arise substantially in other domains, we" // new_line('a') // &
   "stand ready to extend this provision to those domains in future versions" // new_line('a') // &
   "of the GPL, as needed to protect the freedom of users." // new_line('a') // &
   "" // new_line('a') // &
   "  Finally, every program is threatened constantly by software patents." // new_line('a') // &
   "States should not allow patents to restrict development and use of" // new_line('a') // &
   "software on general-purpose computers, but in those that do, we wish to" // new_line('a') // &
   "avoid the special danger that patents applied to a free program could" // new_line('a') // &
   "make it effectively proprietary.  To prevent this, the GPL assures that" // new_line('a') // &
   "patents cannot be used to render the program non-free." // new_line('a') // &
   "" // new_line('a') // &
   "  The precise terms and conditions for copying, distribution and" // new_line('a') // &
   "modification follow." // new_line('a') // &
   "" // new_line('a') // &
   "                       TERMS AND CONDITIONS" // new_line('a') // &
   "" // new_line('a') // &
   "  0. Definitions." // new_line('a') // &
   "" // new_line('a') // &
   "  ""This License"" refers to version 3 of the GNU General Public License." // new_line('a') // &
   "" // new_line('a') // &
   "  ""Copyright"" also means copyright-like laws that apply to other kinds of" // new_line('a') // &
   "works, such as semiconductor masks." // new_line('a') // &
   "" // new_line('a') // &
   "  ""The Program"" refers to any copyrightable work licensed under this" // new_line('a') // &
   "License.  Each licensee is addressed as ""you"".  ""Licensees"" and" // new_line('a') // &
   """recipients"" may be individuals or organizations." // new_line('a') // &
   "" // new_line('a') // &
   "  To ""modify"" a work means to copy from or adapt all or part of the work" // new_line('a') // &
   "in a fashion requiring copyright permission, other than the making of an" // new_line('a') // &
   "exact copy.  The resulting work is called a ""modified version"" of the" // new_line('a') // &
   "earlier work or a work ""based on"" the earlier work." // new_line('a') // &
   "" // new_line('a') // &
   "  A ""covered work"" means either the unmodified Program or a work based" // new_line('a') // &
   "on the Program." // new_line('a') // &
   "" // new_line('a') // &
   "  To ""propagate"" a work means to do anything with it that, without" // new_line('a') // &
   "permission, would make you directly or secondarily liable for" // new_line('a') // &
   "infringement under applicable copyright law, except executing it on a" // new_line('a') // &
   "computer or modifying a private copy.  Propagation includes copying," // new_line('a') // &
   "distribution (with or without modification), making available to the" // new_line('a') // &
   "public, and in some countries other activities as well." // new_line('a') // &
   "" // new_line('a') // &
   "  To ""convey"" a work means any kind of propagation that enables other" // new_line('a') // &
   "parties to make or receive copies.  Mere interaction with a user through" // new_line('a') // &
   "a computer network, with no transfer of a copy, is not conveying." // new_line('a') // &
   "" // new_line('a') // &
   "  An interactive user interface displays ""Appropriate Legal Notices""" // new_line('a') // &
   "to the extent that it includes a convenient and prominently visible" // new_line('a') // &
   "feature that (1) displays an appropriate copyright notice, and (2)" // new_line('a') // &
   "tells the user that there is no warranty for the work (except to the" // new_line('a') // &
   "extent that warranties are provided), that licensees may convey the" // new_line('a') // &
   "work under this License, and how to view a copy of this License.  If" // new_line('a') // &
   "the interface presents a list of user commands or options, such as a" // new_line('a') // &
   "menu, a prominent item in the list meets this criterion." // new_line('a') // &
   "" // new_line('a') // &
   "  1. Source Code." // new_line('a') // &
   "" // new_line('a') // &
   "  The ""source code"" for a work means the preferred form of the work" // new_line('a') // &
   "for making modifications to it.  ""Object code"" means any non-source" // new_line('a') // &
   "form of a work." // new_line('a') // &
   "" // new_line('a') // &
   "  A ""Standard Interface"" means an interface that either is an official" // new_line('a') // &
   "standard defined by a recognized standards body, or, in the case of" // new_line('a') // &
   "interfaces specified for a particular programming language, one that" // new_line('a') // &
   "is widely used among developers working in that language." // new_line('a') // &
   "" // new_line('a') // &
   "  The ""System Libraries"" of an executable work include anything, other" // new_line('a') // &
   "than the work as a whole, that (a) is included in the normal form of" // new_line('a') // &
   "packaging a Major Component, but which is not part of that Major" // new_line('a') // &
   "Component, and (b) serves only to enable use of the work with that" // new_line('a') // &
   "Major Component, or to implement a Standard Interface for which an" // new_line('a') // &
   "implementation is available to the public in source code form.  A" // new_line('a') // &
   """Major Component"", in this context, means a major essential component" // new_line('a') // &
   "(kernel, window system, and so on) of the specific operating system" // new_line('a') // &
   "(if any) on which the executable work runs, or a compiler used to" // new_line('a') // &
   "produce the work, or an object code interpreter used to run it." // new_line('a') // &
   "" // new_line('a') // &
   "  The ""Corresponding Source"" for a work in object code form means all" // new_line('a') // &
   "the source code needed to generate, install, and (for an executable" // new_line('a') // &
   "work) run the object code and to modify the work, including scripts to" // new_line('a') // &
   "control those activities.  However, it does not include the work's" // new_line('a') // &
   "System Libraries, or general-purpose tools or generally available free" // new_line('a') // &
   "programs which are used unmodified in performing those activities but" // new_line('a') // &
   "which are not part of the work.  For example, Corresponding Source" // new_line('a') // &
   "includes interface definition files associated with source files for" // new_line('a') // &
   "the work, and the source code for shared libraries and dynamically" // new_line('a') // &
   "linked subprograms that the work is specifically designed to require," // new_line('a') // &
   "such as by intimate data communication or control flow between those" // new_line('a') // &
   "subprograms and other parts of the work." // new_line('a') // &
   "" // new_line('a') // &
   "  The Corresponding Source need not include anything that users" // new_line('a') // &
   "can regenerate automatically from other parts of the Corresponding" // new_line('a') // &
   "Source." // new_line('a') // &
   "" // new_line('a') // &
   "  The Corresponding Source for a work in source code form is that" // new_line('a') // &
   "same work." // new_line('a') // &
   "" // new_line('a') // &
   "  2. Basic Permissions." // new_line('a') // &
   "" // new_line('a') // &
   "  All rights granted under this License are granted for the term of" // new_line('a') // &
   "copyright on the Program, and are irrevocable provided the stated" // new_line('a') // &
   "conditions are met.  This License explicitly affirms your unlimited" // new_line('a') // &
   "permission to run the unmodified Program.  The output from running a" // new_line('a') // &
   "covered work is covered by this License only if the output, given its" // new_line('a') // &
   "content, constitutes a covered work.  This License acknowledges your" // new_line('a') // &
   "rights of fair use or other equivalent, as provided by copyright law." // new_line('a') // &
   "" // new_line('a') // &
   "  You may make, run and propagate covered works that you do not" // new_line('a') // &
   "convey, without conditions so long as your license otherwise remains" // new_line('a') // &
   "in force.  You may convey covered works to others for the sole purpose" // new_line('a') // &
   "of having them make modifications exclusively for you, or provide you" // new_line('a') // &
   "with facilities for running those works, provided that you comply with" // new_line('a') // &
   "the terms of this License in conveying all material for which you do" // new_line('a') // &
   "not control copyright.  Those thus making or running the covered works" // new_line('a') // &
   "for you must do so exclusively on your behalf, under your direction" // new_line('a') // &
   "and control, on terms that prohibit them from making any copies of" // new_line('a') // &
   "your copyrighted material outside their relationship with you." // new_line('a') // &
   "" // new_line('a') // &
   "  Conveying under any other circumstances is permitted solely under" // new_line('a') // &
   "the conditions stated below.  Sublicensing is not allowed; section 10" // new_line('a') // &
   "makes it unnecessary." // new_line('a') // &
   "" // new_line('a') // &
   "  3. Protecting Users' Legal Rights From Anti-Circumvention Law." // new_line('a') // &
   "" // new_line('a') // &
   "  No covered work shall be deemed part of an effective technological" // new_line('a') // &
   "measure under any applicable law fulfilling obligations under article" // new_line('a') // &
   "11 of the WIPO copyright treaty adopted on 20 December 1996, or" // new_line('a') // &
   "similar laws prohibiting or restricting circumvention of such" // new_line('a') // &
   "measures." // new_line('a') // &
   "" // new_line('a') // &
   "  When you convey a covered work, you waive any legal power to forbid" // new_line('a') // &
   "circumvention of technological measures to the extent such circumvention" // new_line('a') // &
   "is effected by exercising rights under this License with respect to" // new_line('a') // &
   "the covered work, and you disclaim any intention to limit operation or" // new_line('a') // &
   "modification of the work as a means of enforcing, against the work's" // new_line('a') // &
   "users, your or third parties' legal rights to forbid circumvention of" // new_line('a') // &
   "technological measures." // new_line('a') // &
   "" // new_line('a') // &
   "  4. Conveying Verbatim Copies." // new_line('a') // &
   "" // new_line('a') // &
   "  You may convey verbatim copies of the Program's source code as you" // new_line('a') // &
   "receive it, in any medium, provided that you conspicuously and" // new_line('a') // &
   "appropriately publish on each copy an appropriate copyright notice;" // new_line('a') // &
   "keep intact all notices stating that this License and any" // new_line('a') // &
   "non-permissive terms added in accord with section 7 apply to the code;" // new_line('a') // &
   "keep intact all notices of the absence of any warranty; and give all" // new_line('a') // &
   "recipients a copy of this License along with the Program." // new_line('a') // &
   "" // new_line('a') // &
   "  You may charge any price or no price for each copy that you convey," // new_line('a') // &
   "and you may offer support or warranty protection for a fee." // new_line('a') // &
   "" // new_line('a') // &
   "  5. Conveying Modified Source Versions." // new_line('a') // &
   "" // new_line('a') // &
   "  You may convey a work based on the Program, or the modifications to" // new_line('a') // &
   "produce it from the Program, in the form of source code under the" // new_line('a') // &
   "terms of section 4, provided that you also meet all of these conditions:" // new_line('a') // &
   "" // new_line('a') // &
   "    a) The work must carry prominent notices stating that you modified" // new_line('a') // &
   "    it, and giving a relevant date." // new_line('a') // &
   "" // new_line('a') // &
   "    b) The work must carry prominent notices stating that it is" // new_line('a') // &
   "    released under this License and any conditions added under section" // new_line('a') // &
   "    7.  This requirement modifies the requirement in section 4 to" // new_line('a') // &
   "    ""keep intact all notices""." // new_line('a') // &
   "" // new_line('a') // &
   "    c) You must license the entire work, as a whole, under this" // new_line('a') // &
   "    License to anyone who comes into possession of a copy.  This" // new_line('a') // &
   "    License will therefore apply, along with any applicable section 7" // new_line('a') // &
   "    additional terms, to the whole of the work, and all its parts," // new_line('a') // &
   "    regardless of how they are packaged.  This License gives no" // new_line('a') // &
   "    permission to license the work in any other way, but it does not" // new_line('a') // &
   "    invalidate such permission if you have separately received it." // new_line('a') // &
   "" // new_line('a') // &
   "    d) If the work has interactive user interfaces, each must display" // new_line('a') // &
   "    Appropriate Legal Notices; however, if the Program has interactive" // new_line('a') // &
   "    interfaces that do not display Appropriate Legal Notices, your" // new_line('a') // &
   "    work need not make them do so." // new_line('a') // &
   "" // new_line('a') // &
   "  A compilation of a covered work with other separate and independent" // new_line('a') // &
   "works, which are not by their nature extensions of the covered work," // new_line('a') // &
   "and which are not combined with it such as to form a larger program," // new_line('a') // &
   "in or on a volume of a storage or distribution medium, is called an" // new_line('a') // &
   """aggregate"" if the compilation and its resulting copyright are not" // new_line('a') // &
   "used to limit the access or legal rights of the compilation's users" // new_line('a') // &
   "beyond what the individual works permit.  Inclusion of a covered work" // new_line('a') // &
   "in an aggregate does not cause this License to apply to the other" // new_line('a') // &
   "parts of the aggregate." // new_line('a') // &
   "" // new_line('a') // &
   "  6. Conveying Non-Source Forms." // new_line('a') // &
   "" // new_line('a') // &
   "  You may convey a covered work in object code form under the terms" // new_line('a') // &
   "of sections 4 and 5, provided that you also convey the" // new_line('a') // &
   "machine-readable Corresponding Source under the terms of this License," // new_line('a') // &
   "in one of these ways:"//  new_line('a')
!
!  Second part of GPL-v3
!
   character(len = *), parameter :: gpl3_2=&
   "" // new_line('a') // &
   "    a) Convey the object code in, or embodied in, a physical product" // new_line('a') // &
   "    (including a physical distribution medium), accompanied by the" // new_line('a') // &
   "    Corresponding Source fixed on a durable physical medium" // new_line('a') // &
   "    customarily used for software interchange." // new_line('a') // &
   "" // new_line('a') // &
   "    b) Convey the object code in, or embodied in, a physical product" // new_line('a') // &
   "    (including a physical distribution medium), accompanied by a" // new_line('a') // &
   "    written offer, valid for at least three years and valid for as" // new_line('a') // &
   "    long as you offer spare parts or customer support for that product" // new_line('a') // &
   "    model, to give anyone who possesses the object code either (1) a" // new_line('a') // &
   "    copy of the Corresponding Source for all the software in the" // new_line('a') // &
   "    product that is covered by this License, on a durable physical" // new_line('a') // &
   "    medium customarily used for software interchange, for a price no" // new_line('a') // &
   "    more than your reasonable cost of physically performing this" // new_line('a') // &
   "    conveying of source, or (2) access to copy the" // new_line('a') // &
   "    Corresponding Source from a network server at no charge." // new_line('a') // &
   "" // new_line('a') // &
   "    c) Convey individual copies of the object code with a copy of the" // new_line('a') // &
   "    written offer to provide the Corresponding Source.  This" // new_line('a') // &
   "    alternative is allowed only occasionally and noncommercially, and" // new_line('a') // &
   "    only if you received the object code with such an offer, in accord" // new_line('a') // &
   "    with subsection 6b." // new_line('a') // &
   "" // new_line('a') // &
   "    d) Convey the object code by offering access from a designated" // new_line('a') // &
   "    place (gratis or for a charge), and offer equivalent access to the" // new_line('a') // &
   "    Corresponding Source in the same way through the same place at no" // new_line('a') // &
   "    further charge.  You need not require recipients to copy the" // new_line('a') // &
   "    Corresponding Source along with the object code.  If the place to" // new_line('a') // &
   "    copy the object code is a network server, the Corresponding Source" // new_line('a') // &
   "    may be on a different server (operated by you or a third party)" // new_line('a') // &
   "    that supports equivalent copying facilities, provided you maintain" // new_line('a') // &
   "    clear directions next to the object code saying where to find the" // new_line('a') // &
   "    Corresponding Source.  Regardless of what server hosts the" // new_line('a') // &
   "    Corresponding Source, you remain obligated to ensure that it is" // new_line('a') // &
   "    available for as long as needed to satisfy these requirements." // new_line('a') // &
   "" // new_line('a') // &
   "    e) Convey the object code using peer-to-peer transmission, provided" // new_line('a') // &
   "    you inform other peers where the object code and Corresponding" // new_line('a') // &
   "    Source of the work are being offered to the general public at no" // new_line('a') // &
   "    charge under subsection 6d." // new_line('a') // &
   "" // new_line('a') // &
   "  A separable portion of the object code, whose source code is excluded" // new_line('a') // &
   "from the Corresponding Source as a System Library, need not be" // new_line('a') // &
   "included in conveying the object code work." // new_line('a') // &
   "" // new_line('a') // &
   "  A ""User Product"" is either (1) a ""consumer product"", which means any" // new_line('a') // &
   "tangible personal property which is normally used for personal, family," // new_line('a') // &
   "or household purposes, or (2) anything designed or sold for incorporation" // new_line('a') // &
   "into a dwelling.  In determining whether a product is a consumer product," // new_line('a') // &
   "doubtful cases shall be resolved in favor of coverage.  For a particular" // new_line('a') // &
   "product received by a particular user, ""normally used"" refers to a" // new_line('a') // &
   "typical or common use of that class of product, regardless of the status" // new_line('a') // &
   "of the particular user or of the way in which the particular user" // new_line('a') // &
   "actually uses, or expects or is expected to use, the product.  A product" // new_line('a') // &
   "is a consumer product regardless of whether the product has substantial" // new_line('a') // &
   "commercial, industrial or non-consumer uses, unless such uses represent" // new_line('a') // &
   "the only significant mode of use of the product." // new_line('a') // &
   "" // new_line('a') // &
   "  ""Installation Information"" for a User Product means any methods," // new_line('a') // &
   "procedures, authorization keys, or other information required to install" // new_line('a') // &
   "and execute modified versions of a covered work in that User Product from" // new_line('a') // &
   "a modified version of its Corresponding Source.  The information must" // new_line('a') // &
   "suffice to ensure that the continued functioning of the modified object" // new_line('a') // &
   "code is in no case prevented or interfered with solely because" // new_line('a') // &
   "modification has been made." // new_line('a') // &
   "" // new_line('a') // &
   "  If you convey an object code work under this section in, or with, or" // new_line('a') // &
   "specifically for use in, a User Product, and the conveying occurs as" // new_line('a') // &
   "part of a transaction in which the right of possession and use of the" // new_line('a') // &
   "User Product is transferred to the recipient in perpetuity or for a" // new_line('a') // &
   "fixed term (regardless of how the transaction is characterized), the" // new_line('a') // &
   "Corresponding Source conveyed under this section must be accompanied" // new_line('a') // &
   "by the Installation Information.  But this requirement does not apply" // new_line('a') // &
   "if neither you nor any third party retains the ability to install" // new_line('a') // &
   "modified object code on the User Product (for example, the work has" // new_line('a') // &
   "been installed in ROM)." // new_line('a') // &
   "" // new_line('a') // &
   "  The requirement to provide Installation Information does not include a" // new_line('a') // &
   "requirement to continue to provide support service, warranty, or updates" // new_line('a') // &
   "for a work that has been modified or installed by the recipient, or for" // new_line('a') // &
   "the User Product in which it has been modified or installed.  Access to a" // new_line('a') // &
   "network may be denied when the modification itself materially and" // new_line('a') // &
   "adversely affects the operation of the network or violates the rules and" // new_line('a') // &
   "protocols for communication across the network." // new_line('a') // &
   "" // new_line('a') // &
   "  Corresponding Source conveyed, and Installation Information provided," // new_line('a') // &
   "in accord with this section must be in a format that is publicly" // new_line('a') // &
   "documented (and with an implementation available to the public in" // new_line('a') // &
   "source code form), and must require no special password or key for" // new_line('a') // &
   "unpacking, reading or copying." // new_line('a') // &
   "" // new_line('a') // &
   "  7. Additional Terms." // new_line('a') // &
   "" // new_line('a') // &
   "  ""Additional permissions"" are terms that supplement the terms of this" // new_line('a') // &
   "License by making exceptions from one or more of its conditions." // new_line('a') // &
   "Additional permissions that are applicable to the entire Program shall" // new_line('a') // &
   "be treated as though they were included in this License, to the extent" // new_line('a') // &
   "that they are valid under applicable law.  If additional permissions" // new_line('a') // &
   "apply only to part of the Program, that part may be used separately" // new_line('a') // &
   "under those permissions, but the entire Program remains governed by" // new_line('a') // &
   "this License without regard to the additional permissions." // new_line('a') // &
   "" // new_line('a') // &
   "  When you convey a copy of a covered work, you may at your option" // new_line('a') // &
   "remove any additional permissions from that copy, or from any part of" // new_line('a') // &
   "it.  (Additional permissions may be written to require their own" // new_line('a') // &
   "removal in certain cases when you modify the work.)  You may place" // new_line('a') // &
   "additional permissions on material, added by you to a covered work," // new_line('a') // &
   "for which you have or can give appropriate copyright permission." // new_line('a') // &
   "" // new_line('a') // &
   "  Notwithstanding any other provision of this License, for material you" // new_line('a') // &
   "add to a covered work, you may (if authorized by the copyright holders of" // new_line('a') // &
   "that material) supplement the terms of this License with terms:" // new_line('a') // &
   "" // new_line('a') // &
   "    a) Disclaiming warranty or limiting liability differently from the" // new_line('a') // &
   "    terms of sections 15 and 16 of this License; or" // new_line('a') // &
   "" // new_line('a') // &
   "    b) Requiring preservation of specified reasonable legal notices or" // new_line('a') // &
   "    author attributions in that material or in the Appropriate Legal" // new_line('a') // &
   "    Notices displayed by works containing it; or" // new_line('a') // &
   "" // new_line('a') // &
   "    c) Prohibiting misrepresentation of the origin of that material, or" // new_line('a') // &
   "    requiring that modified versions of such material be marked in" // new_line('a') // &
   "    reasonable ways as different from the original version; or" // new_line('a') // &
   "" // new_line('a') // &
   "    d) Limiting the use for publicity purposes of names of licensors or" // new_line('a') // &
   "    authors of the material; or" // new_line('a') // &
   "" // new_line('a') // &
   "    e) Declining to grant rights under trademark law for use of some" // new_line('a') // &
   "    trade names, trademarks, or service marks; or" // new_line('a') // &
   "" // new_line('a') // &
   "    f) Requiring indemnification of licensors and authors of that" // new_line('a') // &
   "    material by anyone who conveys the material (or modified versions of" // new_line('a') // &
   "    it) with contractual assumptions of liability to the recipient, for" // new_line('a') // &
   "    any liability that these contractual assumptions directly impose on" // new_line('a') // &
   "    those licensors and authors." // new_line('a') // &
   "" // new_line('a') // &
   "  All other non-permissive additional terms are considered ""further" // new_line('a') // &
   "restrictions"" within the meaning of section 10.  If the Program as you" // new_line('a') // &
   "received it, or any part of it, contains a notice stating that it is" // new_line('a') // &
   "governed by this License along with a term that is a further" // new_line('a') // &
   "restriction, you may remove that term.  If a license document contains" // new_line('a') // &
   "a further restriction but permits relicensing or conveying under this" // new_line('a') // &
   "License, you may add to a covered work material governed by the terms" // new_line('a') // &
   "of that license document, provided that the further restriction does" // new_line('a') // &
   "not survive such relicensing or conveying." // new_line('a') // &
   "" // new_line('a') // &
   "  If you add terms to a covered work in accord with this section, you" // new_line('a') // &
   "must place, in the relevant source files, a statement of the" // new_line('a') // &
   "additional terms that apply to those files, or a notice indicating" // new_line('a') // &
   "where to find the applicable terms." // new_line('a') // &
   "" // new_line('a') // &
   "  Additional terms, permissive or non-permissive, may be stated in the" // new_line('a') // &
   "form of a separately written license, or stated as exceptions;" // new_line('a') // &
   "the above requirements apply either way." // new_line('a') // &
   "" // new_line('a') // &
   "  8. Termination." // new_line('a') // &
   "" // new_line('a') // &
   "  You may not propagate or modify a covered work except as expressly" // new_line('a') // &
   "provided under this License.  Any attempt otherwise to propagate or" // new_line('a') // &
   "modify it is void, and will automatically terminate your rights under" // new_line('a') // &
   "this License (including any patent licenses granted under the third" // new_line('a') // &
   "paragraph of section 11)." // new_line('a') // &
   "" // new_line('a') // &
   "  However, if you cease all violation of this License, then your" // new_line('a') // &
   "license from a particular copyright holder is reinstated (a)" // new_line('a') // &
   "provisionally, unless and until the copyright holder explicitly and" // new_line('a') // &
   "finally terminates your license, and (b) permanently, if the copyright" // new_line('a') // &
   "holder fails to notify you of the violation by some reasonable means" // new_line('a') // &
   "prior to 60 days after the cessation." // new_line('a') // &
   "" // new_line('a') // &
   "  Moreover, your license from a particular copyright holder is" // new_line('a') // &
   "reinstated permanently if the copyright holder notifies you of the" // new_line('a') // &
   "violation by some reasonable means, this is the first time you have" // new_line('a') // &
   "received notice of violation of this License (for any work) from that" // new_line('a') // &
   "copyright holder, and you cure the violation prior to 30 days after" // new_line('a') // &
   "your receipt of the notice." // new_line('a') // &
   "" // new_line('a') // &
   "  Termination of your rights under this section does not terminate the" // new_line('a') // &
   "licenses of parties who have received copies or rights from you under" // new_line('a') // &
   "this License.  If your rights have been terminated and not permanently" // new_line('a') // &
   "reinstated, you do not qualify to receive new licenses for the same" // new_line('a') // &
   "material under section 10." // new_line('a') // &
   "" // new_line('a') // &
   "  9. Acceptance Not Required for Having Copies." // new_line('a') // &
   "" // new_line('a') // &
   "  You are not required to accept this License in order to receive or" // new_line('a') // &
   "run a copy of the Program.  Ancillary propagation of a covered work" // new_line('a') // &
   "occurring solely as a consequence of using peer-to-peer transmission" // new_line('a') // &
   "to receive a copy likewise does not require acceptance.  However," // new_line('a') // &
   "nothing other than this License grants you permission to propagate or" // new_line('a') // &
   "modify any covered work.  These actions infringe copyright if you do" // new_line('a') // &
   "not accept this License.  Therefore, by modifying or propagating a" // new_line('a') // &
   "covered work, you indicate your acceptance of this License to do so." // new_line('a') // &
   "" // new_line('a') // &
   "  10. Automatic Licensing of Downstream Recipients." // new_line('a') // &
   "" // new_line('a') // &
   "  Each time you convey a covered work, the recipient automatically" // new_line('a') // &
   "receives a license from the original licensors, to run, modify and" // new_line('a') // &
   "propagate that work, subject to this License.  You are not responsible" // new_line('a') // &
   "for enforcing compliance by third parties with this License." // new_line('a') // &
   "" // new_line('a') // &
   "  An ""entity transaction"" is a transaction transferring control of an" // new_line('a') // &
   "organization, or substantially all assets of one, or subdividing an" // new_line('a') // &
   "organization, or merging organizations.  If propagation of a covered" // new_line('a') // &
   "work results from an entity transaction, each party to that" // new_line('a') // &
   "transaction who receives a copy of the work also receives whatever" // new_line('a') // &
   "licenses to the work the party's predecessor in interest had or could" // new_line('a') // &
   "give under the previous paragraph, plus a right to possession of the" // new_line('a') // &
   "Corresponding Source of the work from the predecessor in interest, if" // new_line('a') // &
   "the predecessor has it or can get it with reasonable efforts." // new_line('a') // &
   "" // new_line('a') // &
   "  You may not impose any further restrictions on the exercise of the" // new_line('a') // &
   "rights granted or affirmed under this License.  For example, you may" // new_line('a') // &
   "not impose a license fee, royalty, or other charge for exercise of" // new_line('a') // &
   "rights granted under this License, and you may not initiate litigation" // new_line('a') // &
   "(including a cross-claim or counterclaim in a lawsuit) alleging that" // new_line('a') // &
   "any patent claim is infringed by making, using, selling, offering for" // new_line('a') // &
   "sale, or importing the Program or any portion of it." // new_line('a') // &
   "" // new_line('a') // &
   "  11. Patents." // new_line('a') // &
   "" // new_line('a') // &
   "  A ""contributor"" is a copyright holder who authorizes use under this" // new_line('a') // &
   "License of the Program or a work on which the Program is based.  The" // new_line('a') // &
   "work thus licensed is called the contributor's ""contributor version""." // new_line('a') // &
   "" // new_line('a') // &
   "  A contributor's ""essential patent claims"" are all patent claims" // new_line('a') // &
   "owned or controlled by the contributor, whether already acquired or" // new_line('a') // &
   "hereafter acquired, that would be infringed by some manner, permitted" // new_line('a') // &
   "by this License, of making, using, or selling its contributor version," // new_line('a') // &
   "but do not include claims that would be infringed only as a" // new_line('a') // &
   "consequence of further modification of the contributor version.  For" // new_line('a') // &
   "purposes of this definition, ""control"" includes the right to grant" // new_line('a') // &
   "patent sublicenses in a manner consistent with the requirements of" // new_line('a') // &
   "this License." // new_line('a') // &
   "" // new_line('a') // &
   "  Each contributor grants you a non-exclusive, worldwide, royalty-free" // new_line('a') // &
   "patent license under the contributor's essential patent claims, to" // new_line('a') // &
   "make, use, sell, offer for sale, import and otherwise run, modify and" // new_line('a') // &
   "propagate the contents of its contributor version." // new_line('a') // &
   "" // new_line('a') // &
   "  In the following three paragraphs, a ""patent license"" is any express" // new_line('a') // &
   "agreement or commitment, however denominated, not to enforce a patent" // new_line('a') // &
   "(such as an express permission to practice a patent or covenant not to" // new_line('a') // &
   "sue for patent infringement).  To ""grant"" such a patent license to a" // new_line('a') // &
   "party means to make such an agreement or commitment not to enforce a" // new_line('a') // &
   "patent against the party." // new_line('a') // &
   "" // new_line('a') // &
   "  If you convey a covered work, knowingly relying on a patent license," // new_line('a') // &
   "and the Corresponding Source of the work is not available for anyone" // new_line('a')
!
!  Third part og GPL-v3
!
   character(len = *), parameter :: gpl3_3=&
   "to copy, free of charge and under the terms of this License, through a" // new_line('a') // &
   "publicly available network server or other readily accessible means," // new_line('a') // &
   "then you must either (1) cause the Corresponding Source to be so" // new_line('a') // &
   "available, or (2) arrange to deprive yourself of the benefit of the" // new_line('a') // &
   "patent license for this particular work, or (3) arrange, in a manner" // new_line('a') // &
   "consistent with the requirements of this License, to extend the patent" // new_line('a') // &
   "license to downstream recipients.  ""Knowingly relying"" means you have" // new_line('a') // &
   "actual knowledge that, but for the patent license, your conveying the" // new_line('a') // &
   "covered work in a country, or your recipient's use of the covered work" // new_line('a') // &
   "in a country, would infringe one or more identifiable patents in that" // new_line('a') // &
   "country that you have reason to believe are valid." // new_line('a') // &
   "" // new_line('a') // &
   "  If, pursuant to or in connection with a single transaction or" // new_line('a') // &
   "arrangement, you convey, or propagate by procuring conveyance of, a" // new_line('a') // &
   "covered work, and grant a patent license to some of the parties" // new_line('a') // &
   "receiving the covered work authorizing them to use, propagate, modify" // new_line('a') // &
   "or convey a specific copy of the covered work, then the patent license" // new_line('a') // &
   "you grant is automatically extended to all recipients of the covered" // new_line('a') // &
   "work and works based on it." // new_line('a') // &
   "" // new_line('a') // &
   "  A patent license is ""discriminatory"" if it does not include within" // new_line('a') // &
   "the scope of its coverage, prohibits the exercise of, or is" // new_line('a') // &
   "conditioned on the non-exercise of one or more of the rights that are" // new_line('a') // &
   "specifically granted under this License.  You may not convey a covered" // new_line('a') // &
   "work if you are a party to an arrangement with a third party that is" // new_line('a') // &
   "in the business of distributing software, under which you make payment" // new_line('a') // &
   "to the third party based on the extent of your activity of conveying" // new_line('a') // &
   "the work, and under which the third party grants, to any of the" // new_line('a') // &
   "parties who would receive the covered work from you, a discriminatory" // new_line('a') // &
   "patent license (a) in connection with copies of the covered work" // new_line('a') // &
   "conveyed by you (or copies made from those copies), or (b) primarily" // new_line('a') // &
   "for and in connection with specific products or compilations that" // new_line('a') // &
   "contain the covered work, unless you entered into that arrangement," // new_line('a') // &
   "or that patent license was granted, prior to 28 March 2007." // new_line('a') // &
   "" // new_line('a') // &
   "  Nothing in this License shall be construed as excluding or limiting" // new_line('a') // &
   "any implied license or other defenses to infringement that may" // new_line('a') // &
   "otherwise be available to you under applicable patent law." // new_line('a') // &
   "" // new_line('a') // &
   "  12. No Surrender of Others' Freedom." // new_line('a') // &
   "" // new_line('a') // &
   "  If conditions are imposed on you (whether by court order, agreement or" // new_line('a') // &
   "otherwise) that contradict the conditions of this License, they do not" // new_line('a') // &
   "excuse you from the conditions of this License.  If you cannot convey a" // new_line('a') // &
   "covered work so as to satisfy simultaneously your obligations under this" // new_line('a') // &
   "License and any other pertinent obligations, then as a consequence you may" // new_line('a') // &
   "not convey it at all.  For example, if you agree to terms that obligate you" // new_line('a') // &
   "to collect a royalty for further conveying from those to whom you convey" // new_line('a') // &
   "the Program, the only way you could satisfy both those terms and this" // new_line('a') // &
   "License would be to refrain entirely from conveying the Program." // new_line('a') // &
   "" // new_line('a') // &
   "  13. Use with the GNU Affero General Public License." // new_line('a') // &
   "" // new_line('a') // &
   "  Notwithstanding any other provision of this License, you have" // new_line('a') // &
   "permission to link or combine any covered work with a work licensed" // new_line('a') // &
   "under version 3 of the GNU Affero General Public License into a single" // new_line('a') // &
   "combined work, and to convey the resulting work.  The terms of this" // new_line('a') // &
   "License will continue to apply to the part which is the covered work," // new_line('a') // &
   "but the special requirements of the GNU Affero General Public License," // new_line('a') // &
   "section 13, concerning interaction through a network will apply to the" // new_line('a') // &
   "combination as such." // new_line('a') // &
   "" // new_line('a') // &
   "  14. Revised Versions of this License." // new_line('a') // &
   "" // new_line('a') // &
   "  The Free Software Foundation may publish revised and/or new versions of" // new_line('a') // &
   "the GNU General Public License from time to time.  Such new versions will" // new_line('a') // &
   "be similar in spirit to the present version, but may differ in detail to" // new_line('a') // &
   "address new problems or concerns." // new_line('a') // &
   "" // new_line('a') // &
   "  Each version is given a distinguishing version number.  If the" // new_line('a') // &
   "Program specifies that a certain numbered version of the GNU General" // new_line('a') // &
   "Public License ""or any later version"" applies to it, you have the" // new_line('a') // &
   "option of following the terms and conditions either of that numbered" // new_line('a') // &
   "version or of any later version published by the Free Software" // new_line('a') // &
   "Foundation.  If the Program does not specify a version number of the" // new_line('a') // &
   "GNU General Public License, you may choose any version ever published" // new_line('a') // &
   "by the Free Software Foundation." // new_line('a') // &
   "" // new_line('a') // &
   "  If the Program specifies that a proxy can decide which future" // new_line('a') // &
   "versions of the GNU General Public License can be used, that proxy's" // new_line('a') // &
   "public statement of acceptance of a version permanently authorizes you" // new_line('a') // &
   "to choose that version for the Program." // new_line('a') // &
   "" // new_line('a') // &
   "  Later license versions may give you additional or different" // new_line('a') // &
   "permissions.  However, no additional obligations are imposed on any" // new_line('a') // &
   "author or copyright holder as a result of your choosing to follow a" // new_line('a') // &
   "later version." // new_line('a') // &
   "" // new_line('a') // &
   "  15. Disclaimer of Warranty." // new_line('a') // &
   "" // new_line('a') // &
   "  THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY" // new_line('a') // &
   "APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT" // new_line('a') // &
   "HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM ""AS IS"" WITHOUT WARRANTY" // new_line('a') // &
   "OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO," // new_line('a') // &
   "THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR" // new_line('a') // &
   "PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM" // new_line('a') // &
   "IS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF" // new_line('a') // &
   "ALL NECESSARY SERVICING, REPAIR OR CORRECTION." // new_line('a') // &
   "" // new_line('a') // &
   "  16. Limitation of Liability." // new_line('a') // &
   "" // new_line('a') // &
   "  IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING" // new_line('a') // &
   "WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS" // new_line('a') // &
   "THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY" // new_line('a') // &
   "GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE" // new_line('a') // &
   "USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF" // new_line('a') // &
   "DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD" // new_line('a') // &
   "PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS)," // new_line('a') // &
   "EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF" // new_line('a') // &
   "SUCH DAMAGES." // new_line('a') // &
   "" // new_line('a') // &
   "  17. Interpretation of Sections 15 and 16." // new_line('a') // &
   "" // new_line('a') // &
   "  If the disclaimer of warranty and limitation of liability provided" // new_line('a') // &
   "above cannot be given local legal effect according to their terms," // new_line('a') // &
   "reviewing courts shall apply local law that most closely approximates" // new_line('a') // &
   "an absolute waiver of all civil liability in connection with the" // new_line('a') // &
   "Program, unless a warranty or assumption of liability accompanies a" // new_line('a') // &
   "copy of the Program in return for a fee." // new_line('a') // &
   "" // new_line('a') // &
   "                     END OF TERMS AND CONDITIONS" // new_line('a') // &
   "" // new_line('a') // &
   "            How to Apply These Terms to Your New Programs" // new_line('a') // &
   "" // new_line('a') // &
   "  If you develop a new program, and you want it to be of the greatest" // new_line('a') // &
   "possible use to the public, the best way to achieve this is to make it" // new_line('a') // &
   "free software which everyone can redistribute and change under these terms." // new_line('a') // &
   "" // new_line('a') // &
   "  To do so, attach the following notices to the program.  It is safest" // new_line('a') // &
   "to attach them to the start of each source file to most effectively" // new_line('a') // &
   "state the exclusion of warranty; and each file should have at least" // new_line('a') // &
   "the ""copyright"" line and a pointer to where the full notice is found." // new_line('a') // &
   "" // new_line('a') // &
   "    &lt;one line to give the program's name and a brief idea of what it does.&gt;" // new_line('a') // &
   "    Copyright (C) &lt;year&gt;  &lt;name of author&gt;" // new_line('a') // &
   "" // new_line('a') // &
   "    This program is free software: you can redistribute it and/or modify" // new_line('a') // &
   "    it under the terms of the GNU General Public License as published by" // new_line('a') // &
   "    the Free Software Foundation, either version 3 of the License, or" // new_line('a') // &
   "    (at your option) any later version." // new_line('a') // &
   "" // new_line('a') // &
   "    This program is distributed in the hope that it will be useful," // new_line('a') // &
   "    but WITHOUT ANY WARRANTY; without even the implied warranty of" // new_line('a') // &
   "    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the" // new_line('a') // &
   "    GNU General Public License for more details." // new_line('a') // &
   "" // new_line('a') // &
   "    You should have received a copy of the GNU General Public License" // new_line('a') // &
   "    along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;." // new_line('a') // &
   "" // new_line('a') // &
   "Also add information on how to contact you by electronic and paper mail." // new_line('a') // &
   "" // new_line('a') // &
   "  If the program does terminal interaction, make it output a short" // new_line('a') // &
   "notice like this when it starts in an interactive mode:" // new_line('a') // &
   "" // new_line('a') // &
   "    &lt;program&gt;  Copyright (C) &lt;year&gt;  &lt;name of author&gt;" // new_line('a') // &
   "    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'." // new_line('a') // &
   "    This is free software, and you are welcome to redistribute it" // new_line('a') // &
   "    under certain conditions; type `show c' for details." // new_line('a') // &
   "" // new_line('a') // &
   "The hypothetical commands `show w' and `show c' should show the appropriate" // new_line('a') // &
   "parts of the General Public License.  Of course, your program's commands" // new_line('a') // &
   "might be different; for a GUI interface, you would use an ""about box""." // new_line('a') // &
   "" // new_line('a') // &
   "  You should also get your employer (if you work as a programmer) or school," // new_line('a') // &
   "if any, to sign a ""copyright disclaimer"" for the program, if necessary." // new_line('a') // &
   "For more information on this, and how to apply and follow the GNU GPL, see" // new_line('a') // &
   "&lt;http://www.gnu.org/licenses/&gt;." // new_line('a') // &
   "" // new_line('a') // &
   "  The GNU General Public License does not permit incorporating your program" // new_line('a') // &
   "into proprietary programs.  If your program is a subroutine library, you" // new_line('a') // &
   "may consider it more useful to permit linking proprietary applications with" // new_line('a') // &
   "the library.  If this is what you want to do, use the GNU Lesser General" // new_line('a') // &
   "Public License instead of this License.  But first, please read" // new_line('a') // &
   "&lt;http://www.gnu.org/philosophy/why-not-lgpl.html&gt;."
!
!  Concatenation of parts 1,2 and 3.
!
   character(len = *), parameter :: license_gpl3=gpl3_1 // gpl3_2 // gpl3_3
!
end module gpl3_mod
