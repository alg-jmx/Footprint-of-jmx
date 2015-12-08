library(REmap)
data<-read.csv('E:\\Rworkspace\\Footprint-of-jmx\\Footprint-of-jmx.csv',encoding='utf-8')
set.seed(521)

map<-remap(data,title = 'Footprint-of-jmx',subtitle = '15年的足迹',theme = get_theme('Dark'))
plot(map)
geoData2  = get_geo_position(unique(data[data==data]))
map1<-remapB(markLineData = data,markPointData = data[,2],geoData=geoData2,
             title = 'Footprint-of-jmx in recent years',subtitle = '足迹')
remapB(markLineData = data, title = 'Footprint-of-jmx in recent years',subtitle = '足迹')
plot(map1)

geoData1  = get_geo_position(unique(demoC[demoC==demoC]))
remapB(markLineData = demoC,geoData = geoData1)
