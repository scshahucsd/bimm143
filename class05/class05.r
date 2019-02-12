
baby_weight_table = read.table("bimm143_05_rstats/weight_chart.txt",
                               header = TRUE)

plot(baby_weight_table$Age, baby_weight_table$Weight,
     typ="o", pch=15, cex=1.5, lwd=2, ylim = c(2,10),
     xlab = "Age (months)", ylab = "Weight (kg)",
     main = "Baby Age vs. Weight")

feature_counts_table = read.table("bimm143_05_rstats/feature_counts.txt",
                                  header = TRUE, sep = '\t')

barplot(feature_counts_table$Count, horiz = TRUE,
        ylab = "Feature", names.arg = feature_counts_table$Feature,
        main = "Feature count in Mouse Genome",las=1,
        xlim = c(0,80000))

x = c(rnorm(10000),rnorm(10000)+4)
hist(x,breaks = 100)

m_f_counts = read.delim("bimm143_05_rstats/male_female_counts.txt")

barplot(m_f_counts$Count, names.arg = m_f_counts$Sample,
        col = rainbow(nrow(m_f_counts)), las=2,
        ylab = "Counts")
