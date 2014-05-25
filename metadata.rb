name             'webmin'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures webmin'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe           'webmin', 'do all'
recipe           'webmin::install', 'install'
recipe           'webmin::repositry', 'create repo'


depends          'apt'
depends          'yum'
