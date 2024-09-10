#import "chicv.typ": *;

#let Chinese = 0
#let EnglishFull = 1
#let Simplified = 2
#let runReader(mode) = {
  let translate(zh: [], en: []) = {
    if mode == Chinese {
      zh
    } else {
      en
    }
  }
  let noSimple(simple: [], content) = {
    if mode == Simplified {
      simple
    } else {
      content
    }
  }
  let months = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
  let translate-date(month, year) = translate(
    zh: [#year 年 #month 月],
    en: [#months.at(month - 1), #year]
  )
  let current = translate(
    zh: [至今],
    en: [Present]
  )

  let edu = {
    translate(en: [== Education], zh: [== 教育经历])
    let gpa = 9.29
    let psu-date = [#translate-date(10, 2022) -- #current]
    translate(
      en: cventry(
        tl: [*Coimbatore Institute of Technology*],
        tr: psu-date,
        bl: [_Master of Science in Software Systems_],
        br: [CGPA: #gpa/10 (_upto 4th sem_)]
      )[],
    )

    let cmu-date = [#translate-date(6, 2020) -- #translate-date(5, 2022)]
    translate(
      en: cventry(
        tl: [*Sri Sowdeswari Vidyalaya Matriculation Higher Secondary School*],
        tr: cmu-date,
        bl: [_High School_],
        br: [_10th grade:_ *87%*, _12th grade:_ *92.67%*]
      )[]
    )
  }

  let chips = {
    translate(
      en: cventry(
        tl: [*CHIPS*, _C++, SDL 2, CMake_],
        tr: githublink("kottesh/chips"),
      )[
        - A CHIP-8 interpreter in C++ that is fully compliant with the original specification.
        - Supports all the quirks of the original CHIP-8 platform to enable running older ROMs.
        - Uses SDL2 for rendering, simulating the 64x32 pixel monochrome display of the original CHIP-8.
      ]
    )
  }

  let payit = {
    cventry(
      tl: [*Payit*, _Java, Java Swing, OracleDB_],
      tr: githublink("kottesh/payit")
    )[
      -  Developed a comprehensive payment system model simulation supporting UPI, NetBanking, and Credit/Debit transactions.
      - Utilizes Java Swing to create a seamless user interface, simulating real-world payment scenarios.
      - Transactions and user data are managed using Oracle DB.
    ]
  }

  let cosmox = {
    cventry(
      tl: [*COSMOX*, _Javascript, Ajax, HTML, CSS_],
      tr: githublink("kottesh/cosmox")
    )[
      - Developed a web application that provides comprehensive information about space vehicle launches, stars, astronomers and planets.
      -  Integrated NASA's Astronomy Picture of the Day (APOD) API to dynamically fetch and display daily space imagery and related data.
    ]
  }

  let typetext = {
    cventry(
      tl: [*typetext*, _C, ncurses_],
      tr: githublink("kottesh/typetext") 
    )[
      - Developed a Text User Interface (TUI) based application for typing practice and lessons.
      - Provides real-time performance feedback and custom lessons.
    ]
  }

  let skills = {
    let devTools = {
      let tools = ("GNU/Linux", "Git", "Docker", "Vim", "CMake")
      translate(en: [
        - *Developer Tools:* #tools.join(", ").
      ]
      )
    }
    let progLang = {
      translate(en: [
        - *Programming Languages:* C/C++, Python, Java, Javascript_(Intermediate)_.
      ])
    }
    let frameWorks= {
      translate(en: [
        - *Frameworks:* Java Swing, Oracle DB, React, Zola.
      ])
    }

    progLang
    frameWorks
    devTools
  }

  let achievements = [
    - *Cybersecurity Fundamentals by IBM* #link("https://www.credly.com/badges/6feb1214-f811-45e8-b138-d082b7e24f6b/public_url")[#text(rgb("#0000FF"))[~#fa(arrow-up-right)]]
    - Participated in *Melinia 2024* and secured _1st place_ in Bid Battle(A Techincal Quiz based on bidding.)
  ]

  let relevantCourseWork = [
    - Data Structures and Algorithms
    - Databases 
    - Operating Systems
    - Object Oriented Programming  
  ]

  // Start of the document

  translate(en: [= #smallcaps[Shree Kottes J]])

  [#iconlink("tel:919442928955", text: "+91-94429 28955", icon: mobile) $dot.c$ #iconlink("mailto:shreekottes@gmail.com", text: "shreekottes@gmail.com", icon: mail) $dot.c$ #iconlink("https://ktsh.vercel.app") $dot.c$ #iconlink("https://github.com/kottesh", text: "github.com/kottesh", icon: github) $dot.c$ #iconlink("https://linkedin.com/in/kottesh/", text:"linkedin.com/in/kottesh", icon: linkedin)]

  translate(en: [== Summary])
  par(justify: true)[
    An ambitious Software Systems individual seeking an internship, with a strong interest in solving complex technical problems and optimizing systems. Eager to apply theoretical knowledge in a practical, fast-paced environment.
  ]

  edu

  translate(en: [== Projects], zh: [== 项目经历])
  chips
  payit
  cosmox
  typetext

  translate(en: [== Technical Skills], zh: [== 技能])
  skills

  [== Relevant Coursework]
  relevantCourseWork

  [== Achievements & Certifications]
  achievements
}

#show: chicv
#runReader(EnglishFull)
