default['webmin']['yum']['repositoryid'] = "webmin"
default['webmin']['yum']['description'] = "Webmin"
default['webmin']['yum']['gpgkey'] = 'http://www.webmin.com/jcameron-key.asc'
default['webmin']['yum']['gpgcheck'] = true
default['webmin']['yum']['enabled'] = true
default['webmin']['yum']['priority'] = '10'
default['webmin']['yum']['baseurl'] = "http://download.webmin.com/download/yum"
default['webmin']['yum']['mirrorlist'] = "http://download.webmin.com/download/yum/mirrorlist"


default['webmin']['apt']['baseurl'] = "http://download.webmin.com/download/repository"
default['webmin']['apt']['mirrorlist'] = "http://webmin.mirror.somersettechsolutions.co.uk/repository"
default['webmin']['apt']['gpgkey'] = 'http://www.webmin.com/jcameron-key.asc'
default['webmin']['apt']['components'] = ['sarge','contrib']

default['webmin']['package']['install']['retries']=3

default['webmin']['root_password']="webmin"
