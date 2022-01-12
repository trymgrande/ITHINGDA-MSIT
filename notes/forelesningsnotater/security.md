---
title: security
updated: 2019-05-20 20:36:48Z
created: 2019-04-03 08:21:12Z
author: trym.grande@gmail.com
---

- main points
    - access control matrix
    - passwords
    - encryption
- security: theory
        - principals
        - users
            - separate with own
        - programs
            - more access, more administration
        - authorization
            - who can do what
        - authentication
            - how we know who you are (id, password)
            - two factor - more security
        - encryption
            - private files remain private
            - authentication and privacy on insecure
        - auditing
            - record of who changed what for debugging, recovering hacking
- authorization
    - access control matrix
        - each file/dir has list of permissions
            - read, write execute
            - setuid: program run with root acccess
    - principle of least privilege
        - grant each principal least permission possible to do the job
        - practical challenge: hard to know
            - what permissions need to be granted in advance
    - authorization with intermediaries
        - trusted computing base: set of software trusted to enforce security policy
        - servers often need to be trusted
            - storage servers can store/retrieve data, regardless of which user asks
            - implication: security flaw in server allows attacker to take control of system
- authentication
    - good passwords
- question:
    - where are passwords stored
        - password is a per-user secret
        - in a file?
            - anyone with sysadmin permission can read file
        - encrypted in a file?
            - if gain access to file, can check passwords offline
            - if user reuses password, easy to check against other systems
        - encrypted in a file with a random salt?
            - hash password and salt before encryption, foils pre-computed password table lookup
- encryption
    - symmetric or asymmetric
    - symmetric key
        - single key (symmetric ) is shared between parties, kept secret from everyone else
        - ciphertext = (M)^K
    - public key (asymmetric
        - keys come in pairs, public and private
        - secret: (M)^K-public
        - authentic: (M)^K-private
- public key -> session key
    - public key encryption/decryption is slow; so can use public key to establish (shared) session key
        - assume both sides know each other's public key
- symmetric key -> session key
    - in symmetric key systems, how do we gain a session key with other side
        - infeasible for everyone to share a secret with everyone else
        - solution: "authentication server" (kerbero)
            - everyone shares (a separate) secret with server
            - server provides shared session key for a <-> B
            - everyone trusts authentication server
                - if compromise server, can do anything
- message digests /MD5, SHA)
    - cryptographic checksum: message integrity
        - typically small compared to message (MD5 128 bits)
        - "one way": infeasible to find two messages with same digest
- security practice
    - systems are not secure
        - hackers exploit weakest link
            - system with bugs are vulnerable
            - multiple vulnerabilities can lead to breach
        - not anticipated
        - can't tell if system is compromised
            - easy to hide tracks
        - hard to resecure systems after
            - hackers leave unknown backdoors
- tenex password attack
    - speculative execution
- internet worm
    - viruses that spread automatically
- ping of death
    - dos
    - corrupted pings that lead to too much allocated buffer memory
- unix talk
    - inject text message to enter console remotely
- hiding backdoor
    - if backdoor is in plain source code, not hard to find
    - modify compiler to hide better
- finding bugs
    - responsible disclosure
        - inform devs before making information public
        - work together to create the fix
        - if no response, then go public -> motivation to fix
- bug bounty program
- bugs can otherwise be sold to hackers

- hashing
    - gjør passordet om til random bokstaver
    - kan kun gå en vei
    - for å cracke må man gjette med brute force ved å hashe alle gjetningene
- salting
    - legger til en string i passordet
    - deretter hashes stringen+passordet
    - salt kan være synlig i database, fordi det vil uansett ta lenger tid å generere hash for alle med unikt salt