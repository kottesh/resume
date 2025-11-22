#import "chicv.typ": *;

#let resume = {
    let months = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
    let translate-date(month, year) = [#months.at(month - 1), #year]
    let current = [Present]

    // Education
    let edu = {
        let gpa = 9.26
        let cit-date = [#translate-date(10, 2022) -- #current]
        cventry(
            tl: [ *Coimbatore Institute of Technology*, Coimbatore, India ],
            tr: cit-date,
            bl: [ _Master of Science in Software Systems_ ],
            br: [CGPA: *#gpa/10* ( upto 6th sem )],
        )[]

        let ssv-date = [#translate-date(6, 2020) -- #translate-date(5, 2022)]
        cventry(
            tl: [*Sri Sowdeswari Vidyalaya Matriculation Higher Secondary School*, CBE, India ],
            tr: ssv-date,
            bl: [_High School_],
            br: [_10th grade:_ *87%*, _12th grade:_ *92.67%*],
        )[]
    }

    // Experience
    let experience = {
        let kla-date = [#translate-date(05, 2025) -- #current]
        cventry(
            tl: [ *KLA Coporation* ],
            tr: kla-date,
            bl: [ _Software Engineer Intern_ ],
            br: [ _Chennai, India_ ],
        )[
            - Led development of an *AI agent* with custom *MCP server* replacing legacy chatbot infrastructure, scaling from 4 basic functions to comprehensive autonomous system.
            - *Accelerated developer productivity by 70%*, transforming *15-minutes-long* manual analysis into automated *30-seconds* intelligent summaries.
            - Achieved *80%+* query resolution rate through iterative tool implementation, significantly *reducing* developer dependency on *manual information gathering*.
            - Led infrastructure setup and optimization for model inference pipelines, successfully deploying solutions within constrained memory and compute limitations.
        ]
    }

    // Projects
    let rez-mcp = {
        cventry(
            tl: [ *REZ* | _Python, gofastmcp, FastAPI, BeautifulSoup_],
            tr: iconlink("https://github.com/kottesh/rez-mcp", label: "kottesh/rez-mcp", icon: github),
        )[
            - Developed an MCP Server for CIT Results Site that scraped institutional data using BeautifulSoup and exposed tools for viewing profiles, retrieving results, and downloading hall tickets and result PDFs
            - Implemented token-based authentication with HMAC signing to secure user login and ensure token authenticity within the system
            - Designed and built data retrieval and processing pipeline from web scraping to formatting responses in structured formats optimized for LLM integration
        ]
    }

    let riff = {
        cventry(
            tl: [
                *RIFF*#iconlink("https://riff.kottesh.xyz", label: none, icon: arrow-up-right, size: 100pt)| _React.js, Tailwind CSS, Express, Prisma ORM, MongoDB_
            ],
            tr: iconlink("https://github.com/kottesh/riff", label: "kottesh/riff", icon: github),
        )[
            - A Music Streaming App that supports smooth audio streaming with features to browse, search, and play music.
            - Implemented a fully compatible player with the queuing functionality.
            - Created a custom API backend #iconlink("https://github.com/kottesh/riff-api", label: none, icon: arrow-up-right, size: 100pt)~for serving the content to the site.
            - Utilizes _Firebase_ bucket storage for audio files and _Cloudinary_ for image assets.
        ]
    }

    let chips = {
        cventry(
            tl: [ *CHIPS* | _C++, SDL 2, CMake_ ],
            tr: iconlink("https://github.com/kottesh/chips", label: "kottesh/chips", icon: github),
        )[
            - A CHIP-8 interpreter in C++ that is fully compliant with the original specification.
            - Supports all the quirks of the original CHIP-8 platform to enable running older ROMs.
            - Uses SDL2 for rendering, simulating the 64x32 pixel monochrome display of the original CHIP-8.
        ]
    }

    let rez = {
        cventry(
            tl: [ *REZ* #iconlink("https://rez.kotsh.tech", label: none, icon: arrow-up-right)~ | _Python, Flask, Marshmallow, JWT, Redis_],
            tr: iconlink("https://github.com/kottesh/rez", label: "kottesh/rez", icon: github),
        )[
            - Developed a REST API wrapper for the CIT student portal.
            - Implemented secure authentication using JSON Web Tokens (JWT), replacing vulnerable cookie-based authentication.
            - Students can now try out or consume this api in their apps to download the halltickets and semester exam results.
        ]
    }

    let r2up = {
        cventry(
            tl: [ *R2UP* #iconlink("https://cup.kottesh.xyz", label: none, icon: arrow-up-right)~ | _Vue JS, Tailwind CSS, AWS SDK_ ],
            tr: iconlink("https://github.com/kottesh/r2up", label: "kottesh/r2up", icon: github),
        )[
            - An util to interact with the Cloudflare R2 Object Storage.
            - Implemented functions for uploading files, generating links, and deleting objects.
            - Stores the credentials in the local storage for persistence.
        ]
    }

    let payit = {
        cventry(
            tl: [ *PAYIT* | _Java, Java Swing, OracleDB_ ],
            tr: iconlink("https://github.com/kottesh/payit", label: "kottesh/payit", icon: github),
        )[
            - Developed a comprehensive payment system model simulation supporting UPI, NetBanking, and Credit/Debit transactions.
            - Utilizes Java Swing to create a seamless user interface, simulating real-world payment scenarios.
            - Transactions and user data are managed using Oracle DB.
        ]
    }

    let cosmox = {
        cventry(
            tl: [ *COSMOX* | _Javascript, Ajax, HTML, CSS_ ],
            tr: iconlink("https://github.com/kottesh/cosmox", label: "kottesh/cosmox", icon: github),
        )[
            - Developed a web application that provides comprehensive information about space vehicle launches, stars, astronauts and planets.
            - Integrated NASA's Astronomy Picture of the Day (APOD) API to dynamically fetch and display daily space imagery and related data.
        ]
    }

    let typetext = {
        cventry(
            tl: [*TypeText* - _C, ncurses_],
            tr: [],
        )[
            - Developed a Terminal User Interface (TUI) based application for typing practice and lessons.
            - Provides real-time performance feedback and custom lessons.
        ]
    }

    // Skills
    let skills = {
        let devTools = {
            let tools = ("GNU/Linux(Arch, Ubuntu)", "Git", "Docker", "Vim")
            [- *Developer Tools:* #tools.join(", ")]
        }
        let progLang = {
            [- *Programming Languages:* C/C++, Python, JavaScript]
        }
        let frameWorks = {
            [- *Frameworks:* React JS, Vue JS, Tailwind CSS, Flask, FastAPI, Zola, OpenAI Agents SDK, Langchain]
        }
        let databases = {
            [- *Databases:* SQLite, MongoDB, Redis, Oracle DB, Chroma DB]
        }

        progLang
        frameWorks
        databases
        devTools
    }

    // Achievements
    let achievements = [
        - Won 1st place with a cash prize of *12K INR* in the *_Triathlon_* event at *AXIOS 2K24* hosted by PSG Tech, CBE.~#iconlink("https://drive.google.com/file/d/1uGfbKHbX5grvFcklMBHncklmQ33EcxUL/view?usp=sharing", label: none, icon: arrow-up-right)
        - Secured 2nd place in the *_Code Fusion_* competition at *KRISHNECS 2K24* hosted by SKCET, CBE.~#iconlink("https://drive.google.com/file/d/1uGPxS82819MtigpvXuv-XWNVGkRGHOLl/view?usp=drive_link", label: none, icon: arrow-up-right)
        - Achieved 1st place in the *_Bid Battle_*, a technical quiz based on bidding, winning a cash prize of *2K INR* at *Melinia* 2024 hosted by CIT, CBE.~#iconlink("https://drive.google.com/file/d/1uIvnh5eMedk_u6gev-kx5llTTkbtp7kI/view?usp=drive_link", label: none, icon: arrow-up-right)
    ]

    // Coursework
    let relevantCourseWork = [
        - Data Structures and Algorithms
        - Object Oriented Programming
        - Operating Systems
        - DBMS
    ]

    // Resume
    [= #smallcaps[Shree Kottes J]]

    align(
        center,
    )[
        #iconlink(
            "https://kottesh.xyz",
            label: "kottesh.xyz",
        ) $dot.c$ #iconlink(
            "tel:919442928955",
            label: "+91-94429 28955",
            icon: phone,
        ) $dot.c$ #iconlink(
            "mailto:shreekottes@gmail.com",
            label: "shreekottes@gmail.com",
            icon: mail,
        ) $dot.c$ #iconlink(
            "https://github.com/kottesh",
            label: "kottesh",
            icon: github,
        ) $dot.c$ #iconlink(
            "https://linkedin.com/in/kottesh/",
            label: "kottesh",
            icon: linkedin,
        ) $dot.c$ #iconlink(
            "https://leetcode.com/criptr",
            label: "leetcode",
        )
    ]

    [== Experience]
    experience

    [== Projects]
    rez-mcp
    r2up
    chips
    riff

    [== Technical Skills]
    skills

    [== Areas of Interest]
    relevantCourseWork

    [== Achievements ]
    achievements

    [== Education]
    edu
}

#show: chicv
#resume
