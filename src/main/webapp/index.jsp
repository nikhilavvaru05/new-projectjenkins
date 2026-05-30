<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NexusShop — Premium E‑Commerce</title>

    <!-- Google Fonts + Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #0d0d0f;
            --bg-secondary: #16161a;
            --surface: #1e1e24;
            --surface-hover: #26262e;
            --primary: #ffffff;
            --primary-muted: #a0a0a8;
            --accent: #6366f1;
            --accent-glow: rgba(99, 102, 241, 0.4);
            --accent-secondary: #818cf8;
            --success: #10b981;
            --warning: #f59e0b;
            --danger: #ef4444;
            --card: rgba(30, 30, 36, 0.7);
            --card-border: rgba(255, 255, 255, 0.06);
            --radius: 16px;
            --radius-sm: 10px;
            --radius-full: 9999px;
            --container: 1280px;
            --shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
            --transition: 0.25s cubic-bezier(0.4, 0, 0.2, 1);
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            overflow-x: hidden;
        }

        /* ambient glow */
        body::before {
            content: '';
            position: fixed;
            width: 600px;
            height: 600px;
            background: var(--accent);
            filter: blur(120px);
            top: -200px;
            right: -200px;
            opacity: 0.2;
            z-index: -1;
            pointer-events: none;
        }
        body::after {
            content: '';
            position: fixed;
            width: 500px;
            height: 500px;
            background: #8b5cf6;
            filter: blur(120px);
            bottom: -100px;
            left: -150px;
            opacity: 0.15;
            z-index: -1;
            pointer-events: none;
        }

        .container {
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(13, 13, 15, 0.8);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--card-border);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            font-size: 24px;
            letter-spacing: -0.02em;
        }
        .brand-icon {
            width: 36px;
            height: 36px;
            background: linear-gradient(135deg, var(--accent), #8b5cf6);
            border-radius: var(--radius-sm);
            display: grid;
            place-items: center;
        }
        .accent {
            background: linear-gradient(135deg, var(--accent), var(--accent-secondary));
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
        }
        .main-nav li a {
            padding: 10px 16px;
            border-radius: var(--radius-sm);
            color: var(--primary-muted);
            font-weight: 500;
            transition: all var(--transition);
        }
        .main-nav li a:hover, .main-nav li a.active {
            background: var(--surface);
            color: var(--accent-secondary);
        }
        .search-wrapper {
            flex: 1;
            max-width: 400px;
        }
        .search {
            display: flex;
            align-items: center;
            gap: 12px;
            background: var(--surface);
            border: 1px solid var(--card-border);
            padding: 12px 18px;
            border-radius: var(--radius-full);
            transition: all var(--transition);
        }
        .search:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px var(--accent-glow);
        }
        .search input {
            background: transparent;
            border: none;
            outline: none;
            width: 100%;
            color: var(--primary);
            font-size: 14px;
        }
        .header-actions {
            display: flex;
            gap: 8px;
        }
        .icon-btn {
            width: 44px;
            height: 44px;
            background: var(--surface);
            border: 1px solid var(--card-border);
            border-radius: var(--radius-sm);
            cursor: pointer;
            color: var(--primary-muted);
            transition: all var(--transition);
            display: grid;
            place-items: center;
        }
        .icon-btn:hover {
            background: var(--surface-hover);
            border-color: var(--accent);
            color: white;
        }
        .cart-btn {
            position: relative;
            width: auto;
            padding: 0 16px;
            gap: 10px;
            display: flex;
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 700;
            min-width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
        }
        .mobile-toggle {
            display: none;
            background: var(--surface);
            border: 1px solid var(--card-border);
            border-radius: var(--radius-sm);
            cursor: pointer;
            width: 44px;
            height: 44px;
            font-size: 18px;
        }

        /* Hero */
        .hero {
            position: relative;
            padding: 80px 0;
            overflow: hidden;
        }
        .hero-bg {
            position: absolute;
            inset: 0;
            z-index: -1;
        }
        .hero-bg img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.3;
        }
        .hero-bg::after {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(180deg, var(--bg) 0%, transparent 40%, transparent 70%, var(--bg) 100%);
        }
        .hero-content {
            max-width: 640px;
            position: relative;
        }
        .hero-badge {
            display: inline-flex;
            gap: 8px;
            background: rgba(99,102,241,0.15);
            border: 1px solid rgba(99,102,241,0.3);
            padding: 8px 16px;
            border-radius: var(--radius-full);
            font-weight: 600;
            color: var(--accent-secondary);
            margin-bottom: 24px;
        }
        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: clamp(40px,6vw,64px);
            font-weight: 700;
            line-height: 1.1;
            margin-bottom: 24px;
        }
        .gradient {
            background: linear-gradient(135deg, var(--accent), #a78bfa, #f472b6);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .hero p {
            font-size: 18px;
            color: var(--primary-muted);
            margin-bottom: 36px;
        }
        .hero-actions {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 14px 28px;
            border-radius: var(--radius-sm);
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: all var(--transition);
        }
        .btn-primary {
            background: linear-gradient(135deg, var(--accent), #8b5cf6);
            color: white;
            box-shadow: 0 4px 20px var(--accent-glow);
        }
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 30px var(--accent-glow);
        }
        .btn-secondary {
            background: var(--surface);
            border: 1px solid var(--card-border);
            color: var(--primary);
        }
        .btn-secondary:hover {
            background: var(--surface-hover);
            border-color: var(--accent);
        }
        .hero-stats {
            display: flex;
            gap: 48px;
            margin-top: 64px;
            padding-top: 48px;
            border-top: 1px solid var(--card-border);
        }
        .stat-value {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 36px;
            font-weight: 700;
        }
        .stat-label {
            font-size: 14px;
            color: var(--primary-muted);
        }

        /* sections */
        .section {
            padding: 80px 0;
        }
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            flex-wrap: wrap;
            margin-bottom: 48px;
        }
        .section-title {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 32px;
            font-weight: 700;
        }
        .section-subtitle {
            color: var(--primary-muted);
            margin-top: 8px;
        }
        .view-all {
            color: var(--accent-secondary);
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        /* Categories */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6,1fr);
            gap: 16px;
        }
        .cat-card {
            background: var(--card);
            border: 1px solid var(--card-border);
            border-radius: var(--radius);
            padding: 28px 20px;
            text-align: center;
            cursor: pointer;
            transition: all var(--transition);
        }
        .cat-card:hover {
            transform: translateY(-4px);
            border-color: var(--accent);
            background: rgba(99,102,241,0.05);
        }
        .icon-wrapper {
            width: 56px;
            height: 56px;
            background: var(--surface);
            border-radius: var(--radius-sm);
            display: grid;
            place-items: center;
            margin: 0 auto 16px;
        }
        .cat-card .icon {
            font-size: 22px;
            color: var(--accent-secondary);
        }
        .cat-card h4 {
            font-weight: 600;
            margin-bottom: 4px;
        }
        .cat-card .count {
            font-size: 13px;
            color: var(--primary-muted);
        }

        /* Products */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4,1fr);
            gap: 24px;
        }
        .product-card {
            background: var(--card);
            border: 1px solid var(--card-border);
            border-radius: var(--radius);
            overflow: hidden;
            transition: all var(--transition);
        }
        .product-card:hover {
            transform: translateY(-6px);
            border-color: rgba(255,255,255,0.2);
            box-shadow: var(--shadow);
        }
        .product-image {
            position: relative;
            aspect-ratio: 1;
            background: var(--surface);
            overflow: hidden;
        }
        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }
        .product-card:hover .product-image img {
            transform: scale(1.05);
        }
        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 6px 12px;
            border-radius: var(--radius-full);
            font-size: 12px;
            font-weight: 700;
            z-index: 2;
        }
        .badge-new { background: var(--success); color: white; }
        .badge-sale { background: var(--danger); color: white; }
        .product-actions {
            position: absolute;
            top: 12px;
            right: 12px;
            display: flex;
            flex-direction: column;
            gap: 8px;
            opacity: 0;
            transform: translateX(10px);
            transition: all var(--transition);
        }
        .product-card:hover .product-actions {
            opacity: 1;
            transform: translateX(0);
        }
        .product-action-btn {
            width: 40px;
            height: 40px;
            background: rgba(255,255,255,0.95);
            border-radius: var(--radius-sm);
            border: none;
            cursor: pointer;
            display: grid;
            place-items: center;
            transition: all var(--transition);
        }
        .product-action-btn:hover {
            background: var(--accent);
            color: white;
        }
        .product-body {
            padding: 20px;
        }
        .product-category {
            font-size: 12px;
            color: var(--accent-secondary);
            text-transform: uppercase;
            margin-bottom: 8px;
        }
        .product-title {
            font-weight: 600;
            margin-bottom: 12px;
        }
        .stars {
            color: var(--warning);
            font-size: 13px;
            letter-spacing: 2px;
        }
        .review-count {
            font-size: 13px;
            color: var(--primary-muted);
        }
        .product-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 16px;
        }
        .price-group {
            display: flex;
            gap: 8px;
            align-items: baseline;
        }
        .price {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 20px;
            font-weight: 700;
        }
        .old-price {
            font-size: 14px;
            text-decoration: line-through;
            color: var(--primary-muted);
        }
        .add-to-cart {
            background: var(--accent);
            border: none;
            width: 44px;
            height: 44px;
            border-radius: var(--radius-sm);
            color: white;
            cursor: pointer;
            transition: all var(--transition);
        }
        .add-to-cart:hover {
            background: var(--accent-secondary);
            transform: scale(1.05);
        }

        /* Deal section */
        .deal-section {
            background: var(--bg-secondary);
            border-radius: var(--radius);
            overflow: hidden;
        }
        .deal-wrapper {
            display: grid;
            grid-template-columns: 1fr 1fr;
        }
        .deal-content {
            padding: 60px;
        }
        .deal-tag {
            display: inline-flex;
            background: rgba(239,68,68,0.15);
            border: 1px solid rgba(239,68,68,0.3);
            padding: 8px 16px;
            border-radius: var(--radius-full);
            color: #f87171;
            font-weight: 600;
            margin-bottom: 24px;
        }
        .deal-title {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 12px;
        }
        .deal-description {
            color: var(--primary-muted);
            margin-bottom: 32px;
        }
        .countdown {
            display: flex;
            gap: 12px;
            margin-bottom: 32px;
            flex-wrap: wrap;
        }
        .countdown-item {
            background: var(--surface);
            border: 1px solid var(--card-border);
            padding: 16px 24px;
            border-radius: var(--radius-sm);
            text-align: center;
            min-width: 80px;
        }
        .countdown-value {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 28px;
            font-weight: 700;
        }
        .deal-price {
            font-size: 40px;
            font-weight: 700;
            font-family: 'Space Grotesk', sans-serif;
        }
        .deal-old-price {
            font-size: 20px;
            text-decoration: line-through;
            color: var(--primary-muted);
        }
        .deal-discount {
            background: var(--danger);
            padding: 8px 14px;
            border-radius: var(--radius-sm);
            font-weight: 700;
        }
        .deal-stock {
            color: var(--primary-muted);
            margin: 20px 0 28px;
        }
        .deal-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* Newsletter */
        .newsletter-section {
            background: linear-gradient(135deg, rgba(99,102,241,0.1), rgba(139,92,246,0.1));
            border: 1px solid rgba(99,102,241,0.2);
            border-radius: var(--radius);
            padding: 64px;
            text-align: center;
        }
        .newsletter-title {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 12px;
        }
        .newsletter-form {
            display: flex;
            gap: 12px;
            justify-content: center;
            max-width: 500px;
            margin: 32px auto 0;
        }
        .newsletter-form input {
            flex: 1;
            padding: 16px 24px;
            background: var(--surface);
            border: 1px solid var(--card-border);
            border-radius: var(--radius-sm);
            color: white;
        }
        .newsletter-form input:focus {
            outline: none;
            border-color: var(--accent);
        }
        .newsletter-msg {
            margin-top: 16px;
        }

        /* Footer */
        footer {
            padding: 64px 0 32px;
            border-top: 1px solid var(--card-border);
            margin-top: 40px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 48px;
        }
        .social-links {
            display: flex;
            gap: 12px;
            margin-top: 20px;
        }
        .social-link {
            width: 40px;
            height: 40px;
            background: var(--surface);
            border-radius: var(--radius-sm);
            display: grid;
            place-items: center;
            transition: all var(--transition);
        }
        .social-link:hover {
            background: var(--accent);
            color: white;
        }
        .footer-links {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }
        .footer-links a {
            color: var(--primary-muted);
            font-size: 14px;
        }
        .footer-bottom {
            margin-top: 48px;
            padding-top: 24px;
            border-top: 1px solid var(--card-border);
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .payment-icon {
            background: var(--surface);
            padding: 6px 12px;
            border-radius: 8px;
            margin-left: 8px;
        }

        @media (max-width: 1024px) {
            .categories-grid { grid-template-columns: repeat(3,1fr); }
            .products-grid { grid-template-columns: repeat(3,1fr); }
        }
        @media (max-width: 768px) {
            .main-nav, .search-wrapper { display: none; }
            .mobile-toggle { display: flex; align-items: center; justify-content: center; }
            .products-grid, .categories-grid { grid-template-columns: repeat(2,1fr); }
            .deal-wrapper { grid-template-columns: 1fr; }
            .footer-grid { grid-template-columns: 1fr 1fr; }
            .hero-stats { gap: 24px; }
        }
        @media (max-width: 600px) {
            .products-grid, .categories-grid { grid-template-columns: 1fr; }
            .newsletter-form { flex-direction: column; }
            .deal-content { padding: 32px; }
            .countdown-item { min-width: 65px; padding: 12px; }
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; gap: 16px; align-items: center;">
            <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
            <a class="brand" href="#"><span class="brand-icon"><i class="fas fa-bolt"></i></span><span>Nexus<span class="accent">Shop</span></span></a>
        </div>
        <nav class="main-nav">
            <ul><li><a href="#" class="active">Home</a></li><li><a href="#">Shop</a></li><li><a href="#deals">Deals</a></li><li><a href="#">Collections</a></li></ul>
        </nav>
        <div class="search-wrapper"><div class="search"><i class="fas fa-search search-icon"></i><input type="search" id="searchInput" placeholder="Search products..."></div></div>
        <div class="header-actions"><button class="icon-btn"><i class="far fa-user"></i></button><button class="icon-btn"><i class="far fa-heart"></i></button><button class="icon-btn cart-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i><span class="cart-count" id="cartCount">0</span></button></div>
    </div>
</header>

<main>
    <section class="hero"><div class="hero-bg"><img src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1600&q=80" alt="hero"></div>
        <div class="container"><div class="hero-content"><div class="hero-badge"><i class="fas fa-sparkles"></i> Summer Collection 2026</div><h1>Discover the <span class="gradient">Future of Shopping</span></h1><p>Curated collections of premium products. Free shipping on orders over $50. Shop the latest trends today.</p>
        <div class="hero-actions"><button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button><button class="btn btn-secondary" id="exploreDeals"><i class="fas fa-play-circle"></i> Watch Lookbook</button></div>
        <div class="hero-stats"><div class="stat"><div class="stat-value">10K+</div><div class="stat-label">Products</div></div><div class="stat"><div class="stat-value">50K+</div><div class="stat-label">Customers</div></div><div class="stat"><div class="stat-value">4.9</div><div class="stat-label">Rating</div></div></div></div></div>
    </section>

    <section class="section container"><div class="section-header"><div><h2 class="section-title">Browse Categories</h2><p class="section-subtitle">Explore our wide range</p></div><a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a></div><div class="categories-grid" id="categoriesGrid"></div></section>

    <section class="section container"><div class="section-header"><div><h2 class="section-title">Trending Products</h2><p class="section-subtitle">What's hot right now</p></div><a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a></div><div class="products-grid" id="productsGrid"></div></section>

    <section id="deals" class="section container"><div class="deal-section"><div class="deal-wrapper"><div class="deal-image"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="macbook"></div><div class="deal-content"><div class="deal-tag"><i class="fas fa-bolt"></i> Flash Sale</div><h3 class="deal-title">MacBook Air M2</h3><p class="deal-description">Thin, light, and powerful. Experience the M2 chip.</p><div class="countdown"><div class="countdown-item"><div class="countdown-value" id="dealDays">0</div><div class="countdown-label">Days</div></div><div class="countdown-item"><div class="countdown-value" id="dealHours">00</div><div class="countdown-label">Hours</div></div><div class="countdown-item"><div class="countdown-value" id="dealMinutes">00</div><div class="countdown-label">Mins</div></div><div class="countdown-item"><div class="countdown-value" id="dealSeconds">00</div><div class="countdown-label">Secs</div></div></div><div class="deal-price-wrapper"><span class="deal-price">$999</span><span class="deal-old-price">$1,199</span><span class="deal-discount">-17%</span></div><p class="deal-stock">Only <strong>12 items</strong> left!</p><button class="btn btn-primary" id="buyDeal"><i class="fas fa-shopping-bag"></i> Buy Now</button></div></div></div></section>

    <section class="section container"><div class="newsletter-section"><h3 class="newsletter-title">Stay in the Loop</h3><p class="newsletter-subtitle">Exclusive offers, early access & new arrivals.</p><form class="newsletter-form" id="newsletterForm"><input type="email" id="newsletterEmail" placeholder="Email address" required><button type="submit" class="btn btn-primary">Subscribe <i class="fas fa-arrow-right"></i></button></form><div class="newsletter-msg" id="newsletterMsg"></div></div></section>
</main>

<footer><div class="container"><div class="footer-grid"><div><div class="footer-brand">NexusShop</div><p class="footer-description">Modern e‑commerce. Premium products, fast shipping.</p><div class="social-links"><a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a><a href="#" class="social-link"><i class="fab fa-twitter"></i></a><a href="#" class="social-link"><i class="fab fa-instagram"></i></a></div></div><div class="footer-column"><h5>Shop</h5><div class="footer-links"><a href="#">All Products</a><a href="#">New Arrivals</a><a href="#">Sale</a></div></div><div class="footer-column"><h5>Support</h5><div class="footer-links"><a href="#">Help Center</a><a href="#">Shipping</a><a href="#">Contact</a></div></div><div class="footer-column"><h5>Company</h5><div class="footer-links"><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div></div></div><div class="footer-bottom"><div class="footer-copyright">© <span id="year"></span> NexusShop. All rights reserved.</div><div class="payment-methods"><span class="payment-icon"><i class="fab fa-cc-visa"></i></span><span class="payment-icon"><i class="fab fa-cc-mastercard"></i></span><span class="payment-icon"><i class="fab fa-cc-paypal"></i></span></div></div></div></footer>

<script>
    // Data
    const categories = [
        { name: 'Smartphones', icon: 'fa-mobile-screen', count: 245 },
        { name: 'Laptops', icon: 'fa-laptop', count: 132 },
        { name: 'Clothing', icon: 'fa-shirt', count: 589 },
        { name: 'Audio', icon: 'fa-headphones', count: 178 },
        { name: 'Footwear', icon: 'fa-shoe-prints', count: 312 },
        { name: 'Watches', icon: 'fa-watch', count: 96 }
    ];
    const products = [
        { id:1, title:'iPhone 15 Pro Max', price:1199, oldPrice:1299, rating:5, reviews:284, badge:'new', img:'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category:'Smartphones' },
        { id:2, title:'MacBook Pro 14"', price:1999, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80', category:'Laptops' },
        { id:3, title:'Apple Watch Ultra 2', price:799, oldPrice:899, rating:5, reviews:342, badge:'sale', img:'https://images.unsplash.com/photo-1551816230-ef5deaed4a26?auto=format&fit=crop&w=600&q=80', category:'Watches' },
        { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:89, img:'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80', category:'Footwear' },
        { id:5, title:'Sony WH-1000XM5', price:349, oldPrice:399, rating:5, reviews:467, badge:'sale', img:'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category:'Audio' },
        { id:6, title:'Premium Leather Jacket', price:299, rating:4, reviews:78, img:'https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=600&q=80', category:'Clothing' },
        { id:7, title:'AirPods Pro 2', price:249, rating:5, reviews:523, badge:'new', img:'https://images.unsplash.com/photo-1600294037681-c80b4cb5b434?auto=format&fit=crop&w=600&q=80', category:'Audio' },
        { id:8, title:'Designer Backpack', price:129, oldPrice:159, rating:4, reviews:134, img:'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category:'Accessories' }
    ];
    let cartQuantity = 0;
    const cartCountSpan = document.getElementById('cartCount');
    function updateCartUI() { cartCountSpan.innerText = cartQuantity; }
    function addToCartById(pid) {
        cartQuantity++;
        updateCartUI();
        const btn = document.querySelector(`.add-to-cart[data-id='${pid}']`);
        if(btn) { btn.innerHTML = '<i class="fas fa-check"></i>'; btn.style.background = '#10b981'; setTimeout(()=>{ btn.innerHTML = '<i class="fas fa-plus"></i>'; btn.style.background = ''; }, 1200); }
    }
    function renderProducts(list) {
        const container = document.getElementById('productsGrid');
        container.innerHTML = list.map(p => `
            <div class="product-card">
                <div class="product-image">${p.badge ? `<span class="product-badge ${p.badge==='new' ? 'badge-new' : 'badge-sale'}">${p.badge==='new' ? 'New' : 'Sale'}</span>` : ''}
                <div class="product-actions"><button class="product-action-btn"><i class="far fa-eye"></i></button><button class="product-action-btn"><i class="far fa-heart"></i></button></div>
                <img src="${p.img}" alt="${p.title}"></div>
                <div class="product-body"><div class="product-category">${p.category}</div><div class="product-title">${p.title}</div>
                <div class="product-rating"><span class="stars">${'★'.repeat(p.rating)}${'☆'.repeat(5-p.rating)}</span><span class="review-count">(${p.reviews})</span></div>
                <div class="product-footer"><div class="price-group"><span class="price">$${p.price}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                <button class="add-to-cart" data-id="${p.id}"><i class="fas fa-plus"></i></button></div></div></div>
        `).join('');
        document.querySelectorAll('.add-to-cart').forEach(btn => btn.addEventListener('click', (e) => { e.stopPropagation(); addToCartById(parseInt(btn.dataset.id)); }));
    }
    function renderCategories() {
        const grid = document.getElementById('categoriesGrid');
        grid.innerHTML = categories.map(c => `<div class="cat-card" data-cat="${c.name}"><div class="icon-wrapper"><i class="fas ${c.icon} icon"></i></div><h4>${c.name}</h4><span class="count">${c.count} Products</span></div>`).join('');
        document.querySelectorAll('.cat-card').forEach(card => card.addEventListener('click', (e) => {
            const catName = card.dataset.cat;
            const filtered = products.filter(p => p.category === catName);
            renderProducts(filtered.length ? filtered : products);
            document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' });
        }));
    }
    function filterProductsBySearch(query) {
        const q = query.trim().toLowerCase();
        if(!q) renderProducts(products);
        else renderProducts(products.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)));
    }
    // countdown
    function startDealTimer() {
        let target = new Date(); target.setHours(target.getHours() + 23, target.getMinutes() + 45, 0, 0);
        function tick() {
            const diff = target - new Date();
            if(diff<=0) return;
            const days = Math.floor(diff/(24*3600*1000));
            const hours = Math.floor((diff % (24*3600*1000))/(3600*1000));
            const mins = Math.floor((diff % (3600*1000))/(60*1000));
            const secs = Math.floor((diff % (60*1000))/1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }
        tick(); setInterval(tick,1000);
    }
    document.getElementById('shopNow')?.addEventListener('click',()=>document.getElementById('productsGrid')?.scrollIntoView({behavior:'smooth'}));
    document.getElementById('exploreDeals')?.addEventListener('click',()=>document.getElementById('deals')?.scrollIntoView({behavior:'smooth'}));
    document.getElementById('searchInput')?.addEventListener('keydown',(e)=>{ if(e.key==='Enter') filterProductsBySearch(e.target.value); });
    document.getElementById('newsletterForm')?.addEventListener('submit',(e)=>{ e.preventDefault(); const email=document.getElementById('newsletterEmail').value; const msgDiv=document.getElementById('newsletterMsg'); if(!email.includes('@')){ msgDiv.innerText='Invalid email'; msgDiv.style.color='#f87171'; } else { msgDiv.innerText='✓ Subscribed!'; msgDiv.style.color='#10b981'; document.getElementById('newsletterEmail').value=''; setTimeout(()=>msgDiv.innerText='',2500); } });
    document.getElementById('buyDeal')?.addEventListener('click',()=>{ cartQuantity++; updateCartUI(); const btn=document.getElementById('buyDeal'); btn.innerHTML='<i class="fas fa-check"></i> Added'; setTimeout(()=>btn.innerHTML='<i class="fas fa-shopping-bag"></i> Buy Now',1800); });
    document.getElementById('mobileToggle')?.addEventListener('click',()=> alert('Navigation menu would open in mobile view'));
    document.getElementById('year').innerText = new Date().getFullYear();
    renderCategories();
    renderProducts(products);
    startDealTimer();
    updateCartUI();
</script>
</body>
</html>
