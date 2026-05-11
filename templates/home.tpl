<h1 style="color:red;font-size:80px;">
TESTE MAXILAUDO
</h1>
<section class="maxi-hero">

  <div class="maxi-overlay"></div>

  <div class="maxi-container">

    <div class="maxi-left">

      <div class="maxi-badge">
        Tecnologia premium para perícia automotiva
      </div>

      <h1>
        Perícias
        <span>automotivas</span>
        de alto padrão.
      </h1>

      <p>
        Plataforma premium especializada em laudos automotivos,
        vistoria cautelar e gestão inteligente para lojistas.
      </p>

      <div class="maxi-buttons">
        <a href="#orcamento" class="maxi-btn-primary">
          Solicitar orçamento
        </a>

        <a href="#planos" class="maxi-btn-secondary">
          Ver planos
        </a>
      </div>

      <div class="maxi-stats">

        <div>
          <h3>+8mil</h3>
          <p>Laudos realizados</p>
        </div>

        <div>
          <h3>99%</h3>
          <p>Precisão técnica</p>
        </div>

        <div>
          <h3>24h</h3>
          <p>Entrega rápida</p>
        </div>

      </div>

    </div>

    <div class="maxi-right">

      <div class="maxi-dashboard">

        <div class="maxi-dashboard-header">
          <div>
            <small>Sistema Maxilaudo</small>
            <h2>Painel Inteligente</h2>
          </div>

          <div class="maxi-icon"></div>
        </div>

        <div class="maxi-card">
          <span>Laudos em andamento</span>
          <strong>128</strong>
        </div>

        <div class="maxi-card">
          <span>Tempo médio</span>
          <strong>24h</strong>
        </div>

        <div class="maxi-card">
          <span>Precisão</span>
          <strong>99%</strong>
        </div>

</section>


{# Detect presence of features that remove empty placeholders #}

{% set has_main_slider = settings.slider and settings.slider is not empty %}
{% set has_mobile_slider = settings.toggle_slider_mobile and settings.slider_mobile and settings.slider_mobile is not empty %}
{% set has_video = settings.video_embed %}
{% set has_main_categories = settings.main_categories and settings.slider_categories and settings.slider_categories is not empty %}
{% set has_banners = settings.banner and settings.banner is not empty %}
{% set has_promotional_banners = settings.banner_promotional and settings.banner_promotional is not empty %}
{% set has_news_banners = settings.banner_news and settings.banner_news is not empty %}
{% set has_image_and_text_module = settings.module and settings.module is not empty %}
{% set has_brands = settings.brands and settings.brands is not empty %}
{% set has_informative_banners = settings.banner_services and (settings.banner_services_01_title or settings.banner_services_02_title or settings.banner_services_03_title or settings.banner_services_01_description or settings.banner_services_02_description or settings.banner_services_03_description) %}
{% set has_instafeed = settings.show_instafeed and store.instagram and store.hasInstagramToken() %}
{% set has_institutional_message = settings.institutional_message or settings.institutional_text %}
{% set has_welcome_message = settings.welcome_message or settings.welcome_text %}

{% set has_testimonial_01 = settings.testimonial_01_description or settings.testimonial_01_name or "testimonial_01.jpg" | has_custom_image %}
{% set has_testimonial_02 = settings.testimonial_02_description or settings.testimonial_02_name or "testimonial_02.jpg" | has_custom_image %}
{% set has_testimonial_03 = settings.testimonial_03_description or settings.testimonial_03_name or "testimonial_03.jpg" | has_custom_image %}
{% set has_testimonials = has_testimonial_01 or has_testimonial_02 or has_testimonial_03 %}

{% set show_help = not (has_main_slider or has_mobile_slider or has_video or has_main_categories or has_banners or has_promotional_banners or has_news_banners or has_image_and_text_module or has_brands or has_informative_banners or has_instafeed or has_testimonials or has_institutional_message or has_welcome_message) and not has_products %}

{% set show_component_help = params.preview %}

{% if show_help or show_component_help %}
    {% include "snipplets/svg/empty-placeholders.tpl" %}
{% endif %}

{% set newArray = [] %}
<div class="js-home-sections-container">
	{% for i in 1..18 %}
        {% set section = 'home_order_position_' ~ i %}
        {% set section_select = attribute(settings, section) %}

        {% if section_select not in newArray %}
            {% include 'snipplets/home/home-section-switch.tpl' %}
            {% set newArray = newArray|merge([section_select]) %}
        {% endif %}

    {% endfor %}

    {#  **** Hidden Sections ****  #}
    {% if show_component_help %}
        <div style="display:none">
            {% for section_select in ['slider', 'main_categories', 'welcome', 'institutional', 'products', 'informatives', 'categories', 'main_product', 'new', 'video', 'newsletter', 'sale', 'instafeed', 'promotional', 'news_banners', 'modules', 'brands' , 'testimonials'] %}
                {% if section_select not in newArray %}
                    {% include 'snipplets/home/home-section-switch.tpl' %}
                {% endif %}
            {% endfor %}
        </div>
    {% endif %}
</div>

{% if settings.home_promotional_popup and ("home_popup_image.jpg" | has_custom_image or settings.home_popup_title or settings.home_popup_txt or settings.home_news_box or (settings.home_popup_btn and settings.home_popup_url)) %}
	{% include 'snipplets/home/home-popup.tpl' %}
{% endif %}
 
 <section class="maxi-benefits">

  <div class="maxi-section-title">
    <h2>
      Uma plataforma criada
      para transmitir confiança.
    </h2>

    <p>
      Tudo pensado estrategicamente para gerar autoridade,
      segurança e aumentar conversão.
    </p>
  </div>

  <div class="maxi-benefit-grid">

    <div class="maxi-benefit-card">
      <h3>Precisão técnica</h3>
      <p>Análise profissional detalhada.</p>
    </div>

    <div class="maxi-benefit-card">
      <h3>Vistoria completa</h3>
      <p>Estrutura, pintura e histórico do veículo.</p>
    </div>

    <div class="maxi-benefit-card">
      <h3>Painel inteligente</h3>
      <p>Gestão completa para lojistas.</p>
    </div>

  </div>

</section>
section class="maxi-plans" id="planos">

  <div class="maxi-section-title">
    <h2>Planos para lojistas</h2>

    <p>
      Quanto maior o volume,
      menor o custo por laudo.
    </p>
  </div>

  <div class="maxi-plan-grid">

    <div class="maxi-plan-card">
      <h3>Starter</h3>
      <span>R$299</span>
      <p>20 laudos</p>
    </div>

    <div class="maxi-plan-card featured">
      <small>MAIS ESCOLHIDO</small>
      <h3>Business</h3>
      <span>R$799</span>
      <p>100 laudos</p>
    </div>

    <div class="maxi-plan-card">
      <h3>Enterprise</h3>
      <span>Personalizado</span>
      <p>Volume ilimitado</p>
    </div>

  </div>

</section>
<section class="maxi-quote" id="orcamento">

  <div class="maxi-section-title">
    <h2>Solicite um orçamento</h2>

    <p>
      Plataforma premium para análise automotiva.
    </p>
  </div>

  <form class="maxi-form">

    <input type="text" placeholder="Nome" />

    <input type="text" placeholder="Modelo do veículo" />

    <input type="text" placeholder="Placa" />

    <textarea placeholder="Detalhes"></textarea>

    <button type="submit">
      Solicitar orçamento
    </button>

  </form>

</section>