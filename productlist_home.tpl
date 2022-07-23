{if isset($products) && $products}
<main {if isset($id) && $id} id="{$id}"{/if} class="main">
    <div class="slide-container">
        <p id="slide-left" class="arrow"><</p>

            <ul class="slide-container" id="slider">
            {foreach from=$products item=product name=products}

                <li class="slide-thumbnail">
                    <a href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url">
                        <img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home_default')|escape:'html':'UTF-8'}" alt="productimg" alt="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" {if isset($homeSize)} width="{$homeSize.width}" height="{$homeSize.height}"{/if} itemprop="image"/>
                    </a>
                    <div class="product-details">
                        <h2>{$product.name|truncate:45:'...'|escape:'html':'UTF-8'}</h2>
                        <p>
                            {hook h="displayProductPriceBlock" product=$product type="before_price"}
							{if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}
                        </p>
                        <a href="{$link->getPageLink('cart', true, NULL, $smarty.capture.default, false)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Add to cart'}" data-id-product-attribute="{$product.id_product_attribute|intval}" data-id-product="{$product.id_product|intval}" data-minimal_quantity="{if isset($product.product_attribute_minimal_quantity) && $product.product_attribute_minimal_quantity >= 1}{$product.product_attribute_minimal_quantity|intval}{else}{$product.minimal_quantity|intval}{/if}">
                            {l s='Add to cart'}
                        </a>
                    </div>
                </li>
                {/foreach}
                
            </ul>

        <p id="slide-right" class="arrow"> > </p>
    </div>

    
    <div class="ads-banner">
        <div class="banner-left">
            <div class="glass-morph">
                <h2 class="banner-head">VAST COLLECTION</h2>
                <p class="banner-text">Explore our stores and browse through our unique products suitable for all seasons </p>
                <a href="#" class="col-link">BROWSE COLLECTION</a>
            </div>
        </div>
        <div class="banner-right">
            <span></span>
        </div>
    </div>
</main>
{/if}