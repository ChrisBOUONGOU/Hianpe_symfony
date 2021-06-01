<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class ContactController extends AbstractController
{

    /**
     * @Route("/contact", name="contact")
     * @return response
     */

    public function contact(): Response
    {
        return $this->render("blog/contact.html.twig");
    }
}
