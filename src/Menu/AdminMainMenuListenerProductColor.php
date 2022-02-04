<?php

namespace App\Menu;
use Sylius\Bundle\UiBundle\Menu\Event\MenuBuilderEvent;

class AdminMainMenuListenerProductColor
{
    public function addProductColorMenu(MenuBuilderEvent $event)
    {
        $catalogMenu = $event->getMenu()->getChild('catalog');
        $catalogMenu
            ->addChild('productcolors', ['route' => 'app_admin_productcolor_index'])
            ->setLabel('app.ui.productcolors')
            ->setLabelAttribute('icon', 'paint brush card');
    }
}
