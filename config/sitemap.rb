# config/sitemap.rb
require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = "https://www.absolutehealthandphysio.co.uk"

SitemapGenerator::Sitemap.create do
  add '/', changefreq: 'weekly', priority: 1.0
  add '/pessary_fitting', changefreq: 'monthly', priority: 0.9
  add '/contact', changefreq: 'monthly', priority: 0.8 if Rails.application.routes.url_helpers.respond_to?(:contact_path)
end
