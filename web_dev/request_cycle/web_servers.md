#### What are some of the key design philosophies of the Linux operating system?

####According to Oregon State
* It always assumes you know what you are doing and allows you to do anything you tell it to.
* Provide mechanisms not policy.
Mechanism: long life time
Policy: short life time
* Easy things are easy. Hard things are possible.
* Linux provides a large set of simple tools.
* No one big tool is smart enough to handle all cases or optimized for everything or can anticipate all the uses to which it can be put.
* Its a big tool box, and a lumberyard full of lumber.
* We get a big say in what gets built and how its structured
* We are being groomed to be consumers.
* Resist and be creators of new things.

#### According to Mike Gancarz
* Small is beutiful.
* Make each program do one thing well.
* Build a prototype as soon as possible.
* Choose portability over efficiency.
* Store data it flat text files.
* Use software leverage to your advantage.
* Use shell skripts to increase leverage and portability.
* Avoid captive user interfaces.
* Make every program a filter.

####In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

* VPS is a software-crated emulation that mimics dedicated server within a shared hosting environment. A single physical server can run several virtual private servers, each running on different operating system and having dedicated CPU, RAM and storage. VPS are cheaper, easy to set up and appropriate for web sites with small traffic.

####Why is it considered a bad idea to run programs as the root user on a Linux system?

* It is a good practice to run applications on a useer level and leave the administrative tasks to the root user.
* Running programs as the root user can cause a mistake to delete everything on the system or running a malicious code or a bug to cause a lot of damage to the entire system. Logging with your own user account can still cause damages, but to the home folder only.
