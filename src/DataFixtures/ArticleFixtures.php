<?php

namespace App\DataFixtures;


use App\Entity\Article;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class ArticleFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        for ($i = 1; $i <= 6; $i++) {
            $article = new Article();
            $article->setTitle("Titre de l'article n°$i")
                ->setContent("<p>Contenu</p>")
                ->setImage("https://c.static-nike.com/a/images/w_1920,c_limit/mdbgldn6yg1gg88jomci/image.jpg")
                ->setCreatedAt(new \DateTime());
            $manager->persist($article);
        }

        $manager->flush();
    }
}
