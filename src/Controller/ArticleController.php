<?php

namespace App\Controller;

use App\Entity\Article;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class ArticleController extends AbstractController
{
    /**
     * @Route("/article", name="article")
     * @return Response
     */
    public function article(): Response
    {

        $repo = $this->getDoctrine()->getRepository(Article::class);
        $articles = $repo->findAll();
        return $this->render("blog/article.html.twig", [
            'articles' => $articles
        ]);
    }
    /**
     * @Route("/blog/{id}", name="blog")
     */
    public function blog($id)
    {
        $repo = $this->getDoctrine()->getRepository(Article::class);
        $article = $repo->find($id);
        return $this->render('blog/show.html.twig', [
            'article' => $article
        ]);
    }
}
