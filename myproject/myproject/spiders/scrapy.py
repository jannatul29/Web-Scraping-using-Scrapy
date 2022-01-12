import scrapy
import psycopg2
import json

class QuotesSpider(scrapy.Spider):
    name = "quotes"
    start_urls = [
        'https://www.kayak.co.in/London-Hotels.28501.hotel.ksp'
    ]

    def parse(self, response):
        item = 1
        conn = psycopg2.connect(dbname="store", user="postgres", password="root", host="localhost")
        c = conn.cursor()
        c.execute("CREATE TABLE IF NOT EXISTS test12 (id serial PRIMARY KEY, title varchar, herf varchar, image varchar, rating varchar, price varchar, location varchar, amenities text);")
        conn.commit()
        for quote in response.css('div.soom'):
            if item < 12:
                title = str(quote.xpath('div/div/div/a/span/text()').get())
                herf = 'https://www.kayak.co.in' + str(quote.css('a::attr(href)').get())
                rating = str(quote.xpath('div/div/div/div/span/text()').get())
                price = str(quote.xpath('div/div/span/text()').get())
                location = str(quote.css('div.soom-content-wrapper div.soom-description-wrapper div.soom-description div.soom-price-section span.soom-neighborhood::text').get())
                amenities = str(quote.css('div.soom-content-wrapper div.soom-freebies-section div.soom-freebies div.soom-freebie span.yRv1-text::text').getall())
                img = quote.xpath('a/img/@src').get()
                if img is not None:
                    c.execute("INSERT INTO test12 (title, herf, image, rating, price, location, amenities) VALUES (%s, %s, %s, %s, %s, %s, %s)", (title, herf, img, rating, price, location, amenities))
                    conn.commit()
                elif img is None:
                    imgjson = response.xpath(f"(//script[contains(text(),'{title}')])/text()").getall()
                    data = json.loads(imgjson[0])
                    img = data.get('image')

                    if img:
                        c.execute("INSERT INTO test12 (title, herf, image, rating, price, location, amenities) VALUES (%s, %s, %s, %s, %s, %s, %s)",(title, herf, img, rating, price, location, amenities))
                        conn.commit()
                item = item + 1
