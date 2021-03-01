setwd('D:/CS_zjw/Weibo_projects/test0105/drawFigure0108')
d=read.csv('draw_op.CSV')
class(d)
names(d)
library(ggplot2)

ggplot(d,aes(time))+
  geom_line(aes(y=positive,colour="Positive",group=1),size=1.3)+
  geom_line(aes(y=negative,colour='Negative',group=1),size=1.3,alpha=0.5)+
  geom_line(aes(y=neutral,colour='Neutral',group=1),size=1.3,alpha=0.5)+
  scale_colour_manual(name = '图例', 
                      values =c("Positive"='#FF6666','Negative'='#0099FF','Neutral'='#FFCC00'))+
  theme(legend.title = element_text(color="#666666", size=12,family='mono', face="bold"))+
  theme(legend.text = element_text(color="#666666", size = 12, ,family='sans',face = "bold"))+
  theme(axis.text.x = element_text(angle=60, vjust=0.5,size=10,color='#333333',face = 'bold'))+
  labs(x='日期',y='频数',title='微博文本数据_情感分类变化趋势图',face='bold')+
  theme(axis.title.x = element_text(size = 12, family = "mono", color = '#666666', face = "bold", vjust = 0.5, hjust = 0.5))+
  theme(axis.title.y = element_text(size = 12, family = "mono", color = "#666666", face = "bold", vjust = 0.5, hjust = 0.5,angle=0))

