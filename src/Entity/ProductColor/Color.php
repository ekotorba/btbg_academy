<?php

declare(strict_types=1);

namespace App\Entity\ProductColor;

use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="product_color")
 */

class Color implements ColorInterface
{

    // INT in Database of color
    /**
     * @var int|null
     *
     * @ORM\Column(type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    // Class name of color

    /**
     * @var string|null
     *
     * @ORM\Column(type="string")
     */
    private $name;

    // Add Colors to product side
    // Set Collection bcs our data are an array
    // One to Many bcs we can set One color for lot of products

    /**
     * @var Collection
     *
     * @ORM\OneToMany(targetEntity="App\Entity\Product\Product", mappedBy="color")
     */
    private $products;




    // Getters and setters for products
    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(?string $name): void
    {
        $this->name = $name;
    }

    // Getters for products
    public function getProducts(): Collection
    {
        return $this->products;
    }
}
