<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class ProposController extends AbstractController
{
    /**
     * @Route("/propos", name="propos")
     * @return Response
     */

    public function propos(): Response
    {
        return $this->render("blog/propos.html.twig");
    }
}
