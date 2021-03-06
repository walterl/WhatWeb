##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "LifeSize-Control" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-08-29
version "0.1"
description "LifeSize Control is an all-in-one video management software platform that provides centralized management of your entire video conferencing network, including multivendor environments. - Homepage: http://www.lifesize.com/Products/Infrastructure/Management.aspx"

# ShodanHQ results as at 2011-08-29 #
# 36 for LifeSizeControl -SIP

# Google results as at 2011-08-29 #
# 3 for inurl:"/LifeSizeControl/ASP/"

# Examples #
examples %w|
77.89.153.77
129.128.17.20
92.103.5.73
86.12.133.109
82.138.95.241
173.226.127.45
betabug.qlikview.com
|

# Matches #
matches [

# Redirect Page # Title # /LifeSizeControl/ASP/index.html
{ :url=>"/LifeSizeControl/ASP/index.html", :text=>'<title>LifeSize Control flash check</title>' },

# /LifeSizeControl/ASP/index_alternate.html
{ :url=>"/LifeSizeControl/ASP/index_alternate.html", :text=>'<h3><font color="#999999" face="Arial, Helvetica, sans-serif">You don\'t have the latest version of Adobe Flash Player.</font></h3>' },

# /LifeSizeControl/ASP/index_content.html
{ :url=>"/LifeSizeControl/ASP/index_content.html", :string=>/<body bgcolor="#ffffff" onload="loadVersionXML\(\)"><!-- LSC([\d\.]+) - Code added for dynamic version number-->/ },

# Location Header
{ :url=>"/", :search=>"headers[location]", :regexp=>/^https?:\/\/[^\/]+\/LifeSizeControl\/ASP\/index\.html$/ },

]

end

