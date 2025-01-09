USE quote_db;

CREATE TABLE books(
    book_id INT primary key Auto increment,
    title varchar(255),
    summary text,
    image_url varchar(255),
    pdf_url varchar(255)
);

INSERT INTO books(title,summary,image_url,pdf_url)`
values(
    "Harry Potter and the Sorcerer's Stone",
    "Harry Potter has always lived a miserable life with his cruel aunt, uncle, and spoiled cousin. On his eleventh birthday, he discovers a shocking truth: he?s a wizard, and not just any wizard-he?s famous for surviving a deadly curse cast by the dark wizard Voldemort, who killed his parents. Harry is whisked away to Hogwarts School of Witchcraft and Wizardry, where he befriends the loyal Ron Weasley and the brilliant Hermione Granger. Together, they explore the magical world, encountering enchanted objects, eccentric professors, and strange secrets about Harry?s past. But when they stumble upon a plot to steal the legendary Philosopher?s Stone-an object that grants immortality-they must face dangerous challenges to stop a dark power from rising. What truths will Harry uncover about his destiny?",
    "../static/images/book_cover/Harry Potter and the Sorcerer's Stone.jpg",
    "../static/book_pdf/Harry Potter and the Sorcerer's Stone.pdf"
),
(
    "Harry Potter and the Chamber of Secrets",
    "Harry Potter has always lived a miserable life with his cruel aunt, uncle, and spoiled cousin. On his eleventh birthday, he discovers a shocking truth: he?s a wizard, and not just any wizard-he?s famous for surviving a deadly curse cast by the dark wizard Voldemort, who killed his parents. Harry is whisked away to Hogwarts School of Witchcraft and Wizardry, where he befriends the loyal Ron Weasley and the brilliant Hermione Granger. Together, they explore the magical world, encountering enchanted objects, eccentric professors, and strange secrets about Harry?s past. But when they stumble upon a plot to steal the legendary Philosopher?s Stone-an object that grants immortality-they must face dangerous challenges to stop a dark power from rising. What truths will Harry uncover about his destiny?",
    "../static/images/book_cover/Harry Potter and the Chamber of Secrets.jpg",
    "../static/book_pdf/Harry Potter and the Chamber of Secrets.pdf"
),
(
  "Harry Potter and the Prisoner of Azkaban",
  "Harry returns to Hogwarts for his third year, but his excitement is overshadowed by news of Sirius Black, a dangerous prisoner who has escaped from the wizarding prison \r\n                                of Azkaban. Everyone believes Sirius is hunting Harry, but Harry begins to uncover shocking truths about his parents’ deaths, betrayal, and the mysterious link between \r\n                                Sirius and Voldemort. Meanwhile, the school is guarded by Dementors—terrifying creatures that drain happiness and bring Harry terrifying nightmares of his past. As new \r\n                                revelations surface, Harry discovers that not all is as it seems. With time running out, Harry must take matters into his own hands to uncover the truth. But can he trust \r\n                                his instincts in a world where betrayal lurks around every corner?",
  "../static/images/book_cover/Harry Potter and the Prisoner of Azkaban.jpg",
  "../static/book_pdf/Harry Potter and the Prisoner of Azkaban.pdf"
),
(

  "Harry Potter and the Order of the Phoenix",
  "After narrowly escaping Voldemort’s trap, Harry returns to a world in denial. The Ministry of Magic refuses to believe in Voldemort’s return and instead launches a smear \r\n                                campaign against Harry and Dumbledore. Meanwhile, Hogwarts falls under the oppressive rule of Dolores Umbridge, a sadistic Ministry official bent on controlling the school.\r\n                                 Feeling isolated and mistrusted, Harry finds solace in the Order of the Phoenix, a secret resistance group fighting Voldemort in the shadows. As Harry battles personal\r\n                                  demons and mysterious visions that connect him to Voldemort’s mind, he learns of a prophecy that could determine the fate of the wizarding world. Can Harry prepare for \r\n                                  the looming battle while struggling with his own doubts and fears?",
  "../static/images/book_cover/Harry Potter and the Order of the Phoenix.jpg",
  "../static/book_pdf/Harry Potter and the Order of the Phoenix.pdf"

),
(
"Harry Potter and the Half-blood Prince",
  "The wizarding world is at war, and nowhere is safe. As Voldemort’s power grows, Harry finds himself learning the dark wizard’s secrets through memories Dumbledore collects \r\n                                from those who knew him. At the same time, Harry stumbles upon an old potion book inscribed with notes by the mysterious Half-Blood Prince,which gives him an edge in his \r\n                                studies but hints at a darker power. Amid this, romance blossoms, friendships are tested, and Hogwarts feels more dangerous than ever. Harry and Dumbledore embark on perilous \r\n                                journeys to uncover Voldemort’s hidden Horcruxes—objects holding fragments of his soul. But tragedy strikes, leaving Harry to face a devastating betrayal and the weight of\r\n                                 his mission alone. Will he be ready for the final fight?",
  "../static/images/book_cover/Harry Potter and the Half-blood Prince.jpg",
  "../static/book_pdf/Harry Potter and the Half-blood Prince.pdf"

),
(
  "Harry Potter and the Deathly Hallows",
  "Harry, Ron, and Hermione leave Hogwarts behind to search for the Horcruxes—the key to defeating Voldemort. As fugitives, they face life-threatening dangers, a world overrun\r\n                                 by dark forces, and a growing strain on their friendship. Along the way, they uncover the legend of the Deathly Hallows, three magical objects that could make their wielder\r\n                                  invincible. With Voldemort’s army closing in and the fate of the wizarding world at stake, Harry must confront his deepest fears, make the ultimate sacrifices, and face \r\n                                  Voldemort in a final, epic battle. Will Harry’s courage and determination be enough to triumph over the forces of darkness, or will his story end in tragedy?",
  "../static/images/book_cover/Harry Potter and the Deathly Hallows.jpg",
  "../static/book_pdf/Harry Potter and the Deathly Hallows.pdf"

),
(
  "Alice in Wonderland",
  "Alice, a curious young girl, tumbles down a rabbit hole and finds herself in a fantastical world filled with peculiar creatures and bizarre adventures. As she journeys \r\n                                through Wonderland, Alice encounters the mischievous Cheshire Cat, the frantic White Rabbit, and the tyrannical Queen of Hearts, each pulling her deeper into a realm \r\n                                of whimsy and chaos. Amidst the madness, Alice questions her own identity and reality itself. But what lies at the heart of Wonderland, and can Alice find her way back \r\n                                home? Step into this enchanting tale of imagination and discovery, where logic is turned on its head, and nothing is as it seems.\r\n",
  "../static/images/book_cover/Alice in Wonderland.jpg",
  "../static/book_pdf/Alice in Wonderland.pdf"

),
(
  "Rabindranath Tagore Gitanjali",
  "This poetic masterpiece is a heartfelt conversation between the soul and the divine, weaving together themes of love, surrender, and spirituality. Through 103 lyrical \r\n                                verses, Tagore paints a vivid tapestry of human longing, nature’s beauty, and the eternal connection between the mortal and the infinite. Each poem feels like a prayer, \r\n                                urging readers to embrace simplicity, inner peace, and the divine presence in everyday life. As you journey through these soul-stirring verses, you’ll be inspired to reflect \r\n                                on life’s deeper meaning and your place in the universe. Can these profound words awaken your inner self and lead you closer to the eternal truth?",
  "../static/images/book_cover/Rabindranath Tagore Gitanjali.jpg",
  "../static/book_pdf/Rabindranath Tagore Gitanjali.pdf"
),
(
  "Stephen-Brief history of Time",
  "Stephen Hawking takes readers on an extraordinary journey through the universe, unraveling mysteries of time, space, and the origins of existence. From the Big Bang to black \r\n                                holes, he explains complex scientific concepts in a way that’s both accessible and awe-inspiring. Hawking dares to ask bold questions: What lies at the center of a black hole?\r\n                                 Does time have a beginning and an end? Are there other dimensions beyond what we can perceive? With every chapter, you’ll be drawn deeper into the cosmos, exploring the wonders\r\n                                  of the universe and humanity’s place within it. Can this groundbreaking work change the way you view existence itself?",
  "../static/images/book_cover/Stephen-Brief history of Time.jpg",
  "../static/book_pdf/Stephen-Brief history of Time.pdf"

),
(

  "The Monk Who Sold His Ferrari by Paulo Coelho",
  "Stephen Hawking takes readers on an extraordinary journey through the universe, unraveling mysteries of time, space, and the origins of existence. From the Big Bang to black \r\n                                holes, he explains complex scientific concepts in a way that’s both accessible and awe-inspiring. Hawking dares to ask bold questions: What lies at the center of a black hole?\r\n                                 Does time have a beginning and an end? Are there other dimensions beyond what we can perceive? With every chapter, you’ll be drawn deeper into the cosmos, exploring the wonders\r\n                                  of the universe and humanity’s place within it. Can this groundbreaking work change the way you view existence itself?",
  "../static/images/book_cover/The Monk Who Sold His Ferrari by Paulo Coelho.jpg",
  "../static/book_pdf/The Monk Who Sold His Ferrari by Paulo Coelho.pdf"
),
(

  "The Alchemist",
  "Stephen Hawking takes readers on an extraordinary journey through the universe, unraveling mysteries of time, space, and the origins of existence. From the Big Bang to black \r\n                                holes, he explains complex scientific concepts in a way that’s both accessible and awe-inspiring. Hawking dares to ask bold questions: What lies at the center of a black hole?\r\n                                 Does time have a beginning and an end? Are there other dimensions beyond what we can perceive? With every chapter, you’ll be drawn deeper into the cosmos, exploring the wonders\r\n                                  of the universe and humanity’s place within it. Can this groundbreaking work change the way you view existence itself?",
  "../static/images/book_cover/The Alchemist.jpg",
  "../static/book_pdf/The Alchemist.pdf"
),
(

  "Harry Potter and the Goblet of Fire",
  "Stephen Hawking takes readers on an extraordinary journey through the universe, unraveling mysteries of time, space, and the origins of existence. From the Big Bang to black \r\n                                holes, he explains complex scientific concepts in a way that’s both accessible and awe-inspiring. Hawking dares to ask bold questions: What lies at the center of a black hole?\r\n                                 Does time have a beginning and an end? Are there other dimensions beyond what we can perceive? With every chapter, you’ll be drawn deeper into the cosmos, exploring the wonders\r\n                                  of the universe and humanity’s place within it. Can this groundbreaking work change the way you view existence itself?",
  "../static/images/book_cover/Harry Potter and the Goblet of Fire.jpg",
  "../static/book_pdf/Harry Potter and the Goblet of Fire.pdf"
);







