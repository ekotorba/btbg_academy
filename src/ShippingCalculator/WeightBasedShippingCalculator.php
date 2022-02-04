<?php

namespace App\ShippingCalculator;

use Sylius\Component\Core\Model\OrderItemInterface;
use Sylius\Component\Shipping\Calculator\CalculatorInterface;
use Sylius\Component\Shipping\Model\ShipmentInterface;

class WeightBasedShippingCalculator implements CalculatorInterface
{

    public function calculate(ShipmentInterface $subjec, array $configuration): int
    {
        $totalWeight = 0.0;

        /** @var  OrderItemInterface */
        foreach ($subjec->getOrder() as $item){
            $totalWeight += $item->getVariant()->getWeight() * $item->getQuantity();
        }
        if($totalWeight >= $configuration['weight']){
            return $configuration['above_or_equal'];
        }
        return $configuration['below'];
    }

    public function getType(): string
    {
        return 'weight_based';
    }
}
