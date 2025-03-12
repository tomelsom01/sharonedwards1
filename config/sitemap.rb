# config/sitemap.rb
require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = "https://www.absolutehealthandphysio.co.uk"
SitemapGenerator::Sitemap.create do
  add '/', :changefreq => 'weekly', :priority => 1.0
end
