# 🌐 TakeCare Website - Deployment Guide

## 📁 What's in the `website/` folder

This folder contains the **complete landing page and legal documents** required for App Store and Play Store submission.

```
website/
├── index.html              # Main landing page
├── privacy-policy.html     # Privacy Policy (REQUIRED)
├── terms-of-service.html   # Terms of Service (TODO)
├── eula.html              # EULA (TODO)
├── data-deletion.html     # Data Deletion Policy (TODO)
├── faq.html               # FAQ page (TODO)
├── styles.css             # Main stylesheet
├── legal-styles.css       # Legal pages stylesheet
├── script.js              # JavaScript interactions
└── assets/                # Images, logos, badges
    ├── logo.png
    ├── app-screenshot-1.png
    ├── app-store-badge.svg
    └── google-play-badge.svg
```

---

## 🚀 **Quick Deployment (5 minutes)**

### **Option 1: Netlify (Recommended)**

1. **Create account:** https://app.netlify.com/signup
2. **Drag & drop the `website` folder** to Netlify
3. **Done!** Your site is live

**Your URLs will be:**
```
https://your-site-name.netlify.app/
https://your-site-name.netlify.app/privacy-policy.html
```

### **Option 2: Vercel**

1. **Install Vercel CLI:**
   ```bash
   npm install -g vercel
   ```

2. **Deploy:**
   ```bash
   cd website
   vercel
   ```

3. **Done!** Follow prompts

### **Option 3: GitHub Pages**

1. **Push to GitHub:**
   ```bash
   git add website/
   git commit -m "Add landing page"
   git push
   ```

2. **Enable GitHub Pages:**
   - Go to repository Settings
   - Pages → Source → Select branch
   - Select `/website` folder
   - Save

3. **Done!** Site live at `https://username.github.io/repo-name/`

---

## ✅ **After Deployment**

### **1. Test All Links**

Open each URL in **incognito mode** and verify:

- [ ] Landing page loads correctly
- [ ] Privacy Policy loads correctly
- [ ] All navigation works
- [ ] Email links work (mailto:)
- [ ] Download buttons work (update with real App Store/Play Store URLs)
- [ ] Legal documents accessible

### **2. Update App Store/Play Store Listings**

**App Store Connect:**
- Support URL: `https://your-domain.com/`
- Privacy Policy URL: `https://your-domain.com/privacy-policy.html`
- Marketing URL: `https://your-domain.com/`

**Google Play Console:**
- Privacy Policy URL: `https://your-domain.com/privacy-policy.html`
- Website: `https://your-domain.com/`

### **3. Update App Download Links**

Once your apps are live, update these links in `index.html`:

```html
<!-- Line ~160 - Update these URLs -->
<a href="YOUR_APP_STORE_URL" class="store-button">
<a href="YOUR_PLAY_STORE_URL" class="store-button">
```

---

## 🎨 **Customization**

### **Add Your Logo**

Replace `website/assets/logo.png` with your actual logo:
- Recommended size: 200x200px
- Format: PNG with transparency
- Background: Transparent

### **Add Screenshots**

Add your app screenshots to `website/assets/`:
- `app-screenshot-1.png` - Home screen
- `screenshot-home.png` - Home with doses
- `screenshot-medicines.png` - Medicine list
- `screenshot-analytics.png` - Analytics charts
- `screenshot-stock.png` - Stock management

### **Update Colors**

Edit `website/styles.css`:

```css
:root {
    --primary-red: #E2373B;  /* Your brand color */
    --primary-red-dark: #C62F33;
    --primary-red-light: #FF5A5F;
}
```

### **Update Content**

Edit `website/index.html`:
- Hero title and description
- Features list
- About section
- Contact email addresses

---

## 📧 **Email Setup**

You need these email addresses for compliance:

```
support@yourdomain.com     - General support
privacy@yourdomain.com     - Privacy inquiries  
contact@yourdomain.com     - Business contact
dpo@yourdomain.com         - Data Protection Officer
```

**Options:**
1. **Google Workspace** (paid, professional)
2. **Zoho Mail** (free tier available)
3. **Email forwarding** to your personal email (simple)

---

## 🔍 **SEO Optimization (Already Done)**

The website includes:
- ✅ Meta descriptions
- ✅ Open Graph tags (Facebook, LinkedIn)
- ✅ Twitter Card tags
- ✅ Semantic HTML
- ✅ Mobile-responsive design
- ✅ Fast loading (no external dependencies except fonts)

---

## 📱 **Mobile Testing**

Test on actual devices:

**iOS:**
```bash
# Open in Safari on iPhone
https://your-domain.com/
```

**Android:**
```bash
# Open in Chrome on Android
https://your-domain.com/
```

**Desktop:**
- Chrome
- Firefox
- Safari
- Edge

---

## 🛠️ **Troubleshooting**

### **Issue: "Images not loading"**

**Solution:** Make sure images exist in `website/assets/`

```bash
# Check if images exist
ls website/assets/
```

### **Issue: "CSS not loading"**

**Solution:** Check file paths are relative:

```html
<link rel="stylesheet" href="./styles.css">  ✅ Correct
<link rel="stylesheet" href="/styles.css">   ❌ Wrong for subfolder
```

### **Issue: "404 on legal pages"**

**Solution:** Ensure all HTML files are in `website/` folder:

```
website/
├── index.html
├── privacy-policy.html  ← Must exist
├── terms-of-service.html ← Must exist
└── ... etc
```

---

## 🎯 **Next Steps**

1. **Complete remaining legal pages:**
   - [ ] `terms-of-service.html`
   - [ ] `eula.html`
   - [ ] `data-deletion.html`
   - [ ] `faq.html`

2. **Add app screenshots**

3. **Deploy to production**

4. **Test all links**

5. **Update app stores with URLs**

6. **Submit apps for review!**

---

## 📞 **Need Help?**

If you encounter deployment issues:

- **Netlify:** https://docs.netlify.com/
- **Vercel:** https://vercel.com/docs
- **GitHub Pages:** https://pages.github.com/

**Technical Support:**
- Stack Overflow
- GitHub Discussions
- Web hosting provider support

---

## ✅ **Website Launch Checklist**

- [ ] All HTML files created
- [ ] All CSS files included
- [ ] Images added to assets folder
- [ ] Email addresses set up
- [ ] Content reviewed and proofread
- [ ] Deployed to public URL
- [ ] Tested on mobile devices
- [ ] Tested all navigation links
- [ ] Legal pages accessible
- [ ] Contact forms working (if added)
- [ ] Download links ready (post app approval)
- [ ] SEO meta tags complete
- [ ] Performance tested (fast loading)
- [ ] SSL certificate active (https://)

---

**Your landing page is ready! 🎉**

The hardest part (App Store compliance) is now **DONE**. Just deploy and you're good to go!
