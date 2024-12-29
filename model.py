import mysql.connector

try:
    connection = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "root",
        database = "quote_db"
    )

    cur = connection.cusor()

    query = '''insert into books(title, summary, image_url, pdf_url)
    values
    
        ("Harry Potter and the Half-blood Prince","The wizarding world is at war, and nowhere is safe. As Voldemort’s power grows, Harry finds himself learning the dark wizard’s secrets through memories Dumbledore collects 
                                from those who knew him. At the same time, Harry stumbles upon an old potion book inscribed with notes by the mysterious "Half-Blood Prince," which gives him an edge in his 
                                studies but hints at a darker power. Amid this, romance blossoms, friendships are tested, and Hogwarts feels more dangerous than ever. Harry and Dumbledore embark on perilous 
                                journeys to uncover Voldemort’s hidden Horcruxes—objects holding fragments of his soul. But tragedy strikes, leaving Harry to face a devastating betrayal and the weight of
                                 his mission alone. Will he be ready for the final fight?","../static/images/book_cover/Harry Potter and the Half-blood Prince.jpg","../static/book_pdf/Harry Potter and the Half-blood Prince.pdf")",
            ,
                ("Alice in Wonderland","Alice, a curious young girl, tumbles down a rabbit hole and finds herself in a fantastical world filled with peculiar creatures and bizarre adventures. As she journeys 
                                through Wonderland, Alice encounters the mischievous Cheshire Cat, the frantic White Rabbit, and the tyrannical Queen of Hearts, each pulling her deeper into a realm 
                                of whimsy and chaos. Amidst the madness, Alice questions her own identity and reality itself. But what lies at the heart of Wonderland, and can Alice find her way back 
                                home? Step into this enchanting tale of imagination and discovery, where logic is turned on its head, and nothing is as it seems.
","../static/images/book_cover/Alice in Wonderland.jpg","../static/book_pdf/Alice in Wonderland.pdf"),
                  ("Rabindranath Tagore Gitanjali","This poetic masterpiece is a heartfelt conversation between the soul and the divine, weaving together themes of love, surrender, and spirituality. Through 103 lyrical 
                                verses, Tagore paints a vivid tapestry of human longing, nature’s beauty, and the eternal connection between the mortal and the infinite. Each poem feels like a prayer, 
                                urging readers to embrace simplicity, inner peace, and the divine presence in everyday life. As you journey through these soul-stirring verses, you’ll be inspired to reflect 
                                on life’s deeper meaning and your place in the universe. Can these profound words awaken your inner self and lead you closer to the eternal truth?","../static/images/book_cover/Rabindranath Tagore Gitanjali.jpg","../static/book_pdf/Rabindranath Tagore Gitanjali.pdf"),
                    ("Stephen-Brief history of Time.jpg","Stephen Hawking takes readers on an extraordinary journey through the universe, unraveling mysteries of time, space, and the origins of existence. From the Big Bang to black 
                                holes, he explains complex scientific concepts in a way that’s both accessible and awe-inspiring. Hawking dares to ask bold questions: What lies at the center of a black hole?
                                 Does time have a beginning and an end? Are there other dimensions beyond what we can perceive? With every chapter, you’ll be drawn deeper into the cosmos, exploring the wonders
                                  of the universe and humanity’s place within it. Can this groundbreaking work change the way you view existence itself?","../static/images/book_cover/Stephen-Brief history of Time.jpg.jpg","../static/book_pdf/Stephen-Brief history of Time.jpg.pdf")
    '''

    cur.execute(query)
except mysql.connector.Error as e:
    print(f"Error: {e}")
