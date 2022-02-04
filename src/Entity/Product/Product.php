<?php

declare(strict_types=1);

namespace App\Entity\Product;
use App\Entity\ProductColor\ColorInterface;
use App\Entity\SupplierInterface;
use Doctrine\ORM\Mapping as ORM;
use Sylius\Component\Core\Model\Product as BaseProduct;
use Sylius\Component\Product\Model\ProductTranslationInterface;

/**
 * @ORM\Entity
 * @ORM\Table(name="sylius_product")
 */
class Product extends BaseProduct
{
//Var refer to ColorInterface
//Many to one bcs lot of color can have one product
    /**
     * @var ColorInterface|null
     *
     * @ORM\ManyToOne(targetEntity="App\Entity\ProductColor\Color", inversedBy="products")
     * @ORM\JoinColumn(name="color_id", referencedColumnName="id")
     */
    private $color;

    //Geters And Setters of Colors
    public function getColor(): ?ColorInterface
    {
        return $this->color;
    }

    public function setColor(ColorInterface $color): void
    {
        $this->color = $color;
    }

    //End Geters And Setters of color


    /**
     * @var SupplierInterface|null
     *
     * @ORM\ManyToOne(targetEntity="App\Entity\Supplier", inversedBy="products")
     * @ORM\JoinColumn(name="supplier_id", referencedColumnName="id")
     */
    private $supplier;

public function getSupplier(): ?SupplierInterface
{
    return $this->supplier;
}

public function setSupplier(?SupplierInterface $supplier): void
{
    $this->supplier = $supplier;
}

    protected function createTranslation(): ProductTranslationInterface
    {
        return new ProductTranslation();
    }
}
