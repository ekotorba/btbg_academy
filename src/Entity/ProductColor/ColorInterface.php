<?php

namespace App\Entity\ProductColor;

use Doctrine\ORM\Mapping as ORM;
use Sylius\Component\Resource\Model\ResourceInterface;
use Doctrine\Common\Collections\Collection;

/**
 * @ORM\Entity
 * @ORM\Table(name="product_color")
 */
interface ColorInterface extends ResourceInterface
{

    public function getName(): ?string;

    public function setName(?string $name): void;

    public function getProducts(): Collection;
}
