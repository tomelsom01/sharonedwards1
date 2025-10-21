require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = "https://www.physiotherapyrichmond.co.uk"
SitemapGenerator::Sitemap.public_path = 'public/'
SitemapGenerator::Sitemap.create_index = true

SitemapGenerator::Sitemap.create do
  helpers = Rails.application.routes.url_helpers

  add helpers.root_path, changefreq: 'weekly', priority: 1.0
  add helpers.pessary_fitting_path, changefreq: 'monthly', priority: 0.9 if helpers.respond_to?(:pessary_fitting_path)
  add helpers.contact_path, changefreq: 'monthly', priority: 0.8 if helpers.respond_to?(:contact_path)
end
