install.packages("googledrive")
drive_download("Offense v Defense", path = NULL, type = NULL, overwrite = TRUE,verbose = TRUE)
library(readxl)
Offense_v_Defense <- read_excel("Offense v Defense.xlsx")


#2019-2020 Season

par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`,Offense_v_Defense$`W`,xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Offensive/Defensive Weight vs Wins", bty="O")
plot(Offense_v_Defense$`Off - Def`,Offense_v_Defense$`SRS (MOV/A)`,xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Offensive/Defensive Weight vs SRS", bty="O")


#Corellation Coefficient

#All Teams
par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`,Offense_v_Defense$W, xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Offensive/Defensive Weight vs Wins", bty="O")
plot(Offense_v_Defense$`Off - Def`,Offense_v_Defense$`SRS (MOV/A)`, xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Offensive/Defensive Weight vs SRS", bty="O")

#All Teams Correlations
correlationW <- c(Eighties= -0.1776904578, Nineties= -0.05731205529, Aughts= 0.02229093467, Tens= -0.03451714604)
correlationSRS <- c(Eighties= -0.1657869426, Nineties= -0.05520795506, Aughts= 0.006493060347, Tens= -0.04004881256)
correlation <- rbind(correlationW, correlationSRS)
barplot(correlation, beside = TRUE, names.arg = c("80s", "90s", "00s", "10s"), xlab = "Decade", ylab = "Off/Def Weight and Success Correlation", bty = "O", col=c("blue","skyblue1"), main="Correlation between Off/Def Weight and Success by Decade", bty = "n", ylim=c(-0.2,0.05))

#80s
par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$Decade == "80s"],Offense_v_Defense$W[Offense_v_Defense$Decade == "80s"], xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Off/Def Weight vs Wins for Teams in the 80s", bty="O")
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$Decade == "80s"],Offense_v_Defense$`SRS (MOV/A)`[Offense_v_Defense$Decade == "80s"], xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Off/Def Weight vs SRS for Teams in the 80s", bty="O")

#90s
par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$Decade == "90s"],Offense_v_Defense$W[Offense_v_Defense$Decade == "90s"], xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Off/Def Weight vs Wins for Teams in the 90s", bty="O")
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$Decade == "90s"],Offense_v_Defense$`SRS (MOV/A)`[Offense_v_Defense$Decade == "90s"], xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Off/Def Weight vs SRS for Teams in the 90s", bty="O")

#00s
par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$Decade == "00s"],Offense_v_Defense$W[Offense_v_Defense$Decade == "00s"], xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Off/Def Weight vs Wins for Teams in the 00s", bty="O")
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$Decade == "00s"],Offense_v_Defense$`SRS (MOV/A)`[Offense_v_Defense$Decade == "00s"], xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Off/Def Weight vs SRS for Teams in the 00s", bty="O")

#10s
par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$Decade == "10s"],Offense_v_Defense$W[Offense_v_Defense$Decade == "10s"], xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Off/Def Weight vs Wins for Teams in the 10s", bty="O")
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$Decade == "10s"],Offense_v_Defense$`SRS (MOV/A)`[Offense_v_Defense$Decade == "10s"], xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Off/Def Weight vs SRS for Teams in the 10s", bty="O")


#Playoff Teams
par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$'Playoffs' == "Yes"],Offense_v_Defense$W[Offense_v_Defense$'Playoffs' == "Yes"], xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Off/Def Weight vs Wins for Playoff Teams", bty="O")
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$'Playoffs' == "Yes"],Offense_v_Defense$`SRS (MOV/A)`[Offense_v_Defense$'Playoffs' == "Yes"], xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Off/Def Weight vs SRS for Playoff Teams", bty="O")

#Playoff Teams Correlations
correlationW1 <- c(Eighties= -0.2072830417, Nineties= -0.02234412674, Aughts= -0.02107457027, Tens= -0.1280659444)
correlationSRS1 <- c(Eighties= -0.1787587546, Nineties= -0.01302816329, Aughts= -0.02659093237, Tens= -0.1227422872)
correlation1 <- rbind(correlationW1, correlationSRS1)
barplot(correlation1, beside = TRUE, names.arg = c("80s", "90s", "00s", "10s"), xlab = "Decade", ylab = "Off/Def Weight and Success Correlation", bty = "O", col=c("blue","skyblue1"), main="Correlation between Off/Def Weight and Success — Playoff Teams", ylim=c(-0.25,0))

#80s
par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "80s"],Offense_v_Defense$W[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "80s"], xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Off/Def Weight vs Wins for Playoff Teams in the 80s", bty="O")
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "80s"],Offense_v_Defense$`SRS (MOV/A)`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "80s"], xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Off/Def Weight vs SRS for Playoff Teams in the 80s", bty="O")

#90s
par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "90s"],Offense_v_Defense$W[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "90s"], xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Off/Def Weight vs Wins for Playoff Teams in the 90s", bty="O")
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "90s"],Offense_v_Defense$`SRS (MOV/A)`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "90s"], xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Off/Def Weight vs SRS for Playoff Teams in the 90s", bty="O")

#00s
par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "00s"],Offense_v_Defense$W[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "00s"], xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Off/Def Weight vs Wins for Playoff Teams in the 00s", bty="O")
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "00s"],Offense_v_Defense$`SRS (MOV/A)`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "00s"], xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Off/Def Weight vs SRS for Playoff Teams in the 00s", bty="O")

#10s
par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "10s"],Offense_v_Defense$W[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "10s"], xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Off/Def Weight vs Wins for Playoff Teams in the 10s", bty="O")
plot(Offense_v_Defense$`Off - Def`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "10s"],Offense_v_Defense$`SRS (MOV/A)`[Offense_v_Defense$'Playoffs' == "Yes" & Offense_v_Defense$Decade == "10s"], xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Off/Def Weight vs SRS for Playoff Teams in the 10s", bty="O")


#Champion Teams
#On "League Champions" tab
par(mfrow = c(1, 2))
plot(Offense_v_Defense$`Off - Def`,Offense_v_Defense$W, xlab = "Offensive/Defensive Weight", ylab = "Wins", col="blue", pch=20, main="Offensive/Defensive Weight vs Wins", bty="O")
plot(Offense_v_Defense$`Off - Def`,Offense_v_Defense$`SRS (MOV/A)`, xlab = "Offensive/Defensive Weight", ylab = "SRS", col="blue", pch=20, main="Offensive/Defensive Weight vs SRS", bty="O")

#Champion Teams Correlations
correlationW2 <- c(Eighties= 0.2888187475, Nineties= -0.04505709018, Aughts= 0.1881049362, Tens= -0.0832011214)
correlationSRS2 <- c(Eighties= 0.2682411651, Nineties= -0.3108623993, Aughts= 0.4428126709, Tens= 0.01790349706)
correlation2 <- rbind(correlationW2, correlationSRS2)
barplot(correlation2, beside = TRUE, names.arg = c("80s", "90s", "00s", "10s"), xlab = "Decade", ylab = "Off/Def Weight and Success Correlation", bty = "O", col=c("blue","skyblue1"), main="Correlation between Off/Def Weight and Success...Championship Teams", bty = "n", ylim=c(-0.32,0.5))


#Average Wins

#Off/Def Weighted
x  <- c(1,2,3,4,5)
y1 <- c(42.27142857, 42.08289855, 41.31506849, 41.6496568, 41.75378967)
y2 <- c(39.546875, 39.89152, 40.70714286, 40.43579221, 40.25580124) 
df <- data.frame(x,y1,y2)

plot(x,y1,col="blue", ylim=c(39,43),xlab = "Decade", ylab = "Average Wins", pch=20, type="o", main="Average Wins of Offensively and Defensively Weighted Teams") 
lines(x, y2, col="skyblue", pch=20,  type="o")
grid()

#Off/Def Weighted Playoff Teams
x  <- c(1,2,3,4,5)
y1P <- c(48.02040816, 50.87714286, 50.14285714, 51.36273563, 50.3577037)
y2P <- c(45.95348837, 49.94411765, 49.79487179, 49.70586207, 49.2051087) 
dfP <- data.frame(x,y1P,y2P)

plot(x,y1P,col="blue",xlab = "Decade", ylab = "Average Wins", pch=20, type="o", main="Average Wins of Offensively and Defensively Weighted Playoff Teams", ylim=c(45,52)) 
lines(x, y2P, col="skyblue", pch=20,  type="o")
grid()

#Off/Def Weighted Championship Teams
y1C <- c(62.75, 60.2, 57.75, 61.2, 60.5)
y2C <- c(63, 59.92, 60.66666667, 60.02966667, 60.40341176) 
dfC <- data.frame(x,y1C,y2C)

plot(x,y1C,col="blue",xlab = "Decade", ylab = "Average Wins", pch=20, type="o", main="Average Wins of Offensively and Defensively Weighted Championship Teams", ylim=c(57,64)) 
lines(x, y2C, col="skyblue", pch=20,  type="o")
grid()


#Heavily Off/Def Weighted 
y1H <- c(42.95, 43.94777778, 42.31578947, 42.81616393, 42.90175862)
y2H <- c(38.4, 41.80434783, 42.87931034, 41.75070175, 41.75574586)
dfH <- data.frame(x,y1H,y2H)

plot(x,y1H,col="blue",xlab = "Decade", ylab = "Average Wins", pch=20, type="o", main="Average Wins of Heavily Offensively and Heavily Defensively Weighted Teams", ylim=c(38,45)) 
lines(x, y2H, col="skyblue", pch=20,  type="o")
grid()

#Heavily Off/Def Weighted Playoffs
y1HP <- c(46.8, 47.85230769, 49.9, 49.3156, 48.76609434)
y2HP <- c(43, 49.38482759, 48.675, 47.53883333, 47.79631667)
dfHP <- data.frame(x,y1HP,y2H)

plot(x,y1HP,col="blue",xlab = "Decade", ylab = "Average Wins", pch=20, type="o", main="Average Wins of Heavily Offensively and Heavily Defensively Weighted Playoff Teams", ylim=c(42,51))
lines(x, y2HP, col="skyblue", pch=20,  type="o")
grid()


#Average ‘Off-Def’ Value

#Playoff Teams
averageOD <- c(All= 0.2905405405, Tens= 0.4375, Aughts= 1.05625, Nineties= -0.2625, Eighties= -0.3333333333)
barplot(averageOD, horiz=TRUE, las=1, names.arg = c("Total", "10s", "00s", "90s", "80s"), xlab = "Average Off/Def Weight", ylab = "Decade", bty = "O", col=c("blue"), main="Average Off/Def Weight Among Playoff Teams", xlim = c(-0.5,1.5))

#Champion Teams
averageOD1 <- c(All= 0.2432432432, Tens= 0.0, Aughts= 2.1, Nineties= 1.3, Eighties= -4.166666667)
barplot(averageOD1, horiz=TRUE, las=1, names.arg = c("Total", "10s", "00s", "90s", "80s"), xlab = "Average Off/Def Weight", ylab = "Decade", bty = "O", col=c("blue"), main="Average Off/Def Weight Among Championship Teams", xlim = c(-4.5,2.5))

#Wins > 50
averageOD2 <- c(All= -1.141221374, Tens= -1.512195122, Aughts= -0.328358209, Nineties= -0.6585365854, Eighties= -3.193548387)
barplot(averageOD2, horiz=TRUE, las=1, names.arg = c("Total", "10s", "00s", "90s", "80s"), xlab = "Average Off/Def Weight", ylab = "Decade", bty = "O", col=c("blue"), main="Average Off/Def Weight Among Teams > 50 Wins", xlim = c(-3.5,0))

#Wins > 60
averageOD3 <- c(All= -1.240740741, Tens= 1.3125, Aughts= 0.08333333333, Nineties= -2.888888889, Eighties= -4.625) 
barplot(averageOD3, horiz=TRUE, las=1, names.arg = c("Total", "10s", "00s", "90s", "80s"), xlab = "Average Off/Def Weight", ylab = "Decade", bty = "O", col=c("blue"), main="Average Off/Def Weight Among Teams > 60 Wins", xlim = c(-5,2))

#SRS > 7
averageOD3 <- c(All= -0.6274509804, Tens= -0.8235294118, Aughts= 0.3125, Nineties= -1.615384615, Eighties= -0.4) 
barplot(averageOD3, horiz=TRUE, las=1, names.arg = c("Total", "10s", "00s", "90s", "80s"), xlab = "Average Off/Def Weight", ylab = "Decade", bty = "O", col=c("blue"), main="Average Off/Def Weight Among Teams with an SRS > 7", xlim = c(-5,2))

