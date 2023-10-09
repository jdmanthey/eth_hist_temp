
plot(c(1,1), xlim=c(1,46), ylim=c(0, max(x$realized_load)), xlab="", ylab="Observed Heterozygosity", xaxt="n", bty="n")


# polygon boundaries
polygon1 <- rbind(c(7.5, 0), c(15.5, 0), c(15.5, max(x$realized_load)), c(7.5, max(x$realized_load)), c(7.5, 0))
polygon(polygon1, col="snow2", border="white")
polygon1 <- rbind(c(23.5, 0), c(31.5, 0), c(31.5, max(x$realized_load)), c(23.5, max(x$realized_load)), c(23.5, 0))
polygon(polygon1, col="snow2", border="white")
polygon1 <- rbind(c(39.5, 0), c(47.5, 0), c(47.5, max(x$realized_load)), c(39.5, max(x$realized_load)), c(39.5, 0))
polygon(polygon1, col="snow2", border="white")

########################
###### Cossypha
########################

plot_vector1 <- x$realized_load[x$species == "Cossypha_semirufa" & x$geography == "choke" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Cossypha_semirufa" & x$geography == "choke" & x$time == "modern"]
lines(cbind(c(1, 2), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[3])
points(cbind(c(rep(1, length(plot_vector1))), plot_vector1), col=point_colors[3], pch=21, bg="white")
points(cbind(c(rep(2, length(plot_vector2))), plot_vector2), col=point_colors[3], pch=19)

plot_vector1 <- x$realized_load[x$species == "Cossypha_semirufa" & x$geography == "central" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Cossypha_semirufa" & x$geography == "central" & x$time == "modern"]
lines(cbind(c(3, 4), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[2])
points(cbind(c(rep(3, length(plot_vector1))), plot_vector1), col=point_colors[2], pch=21, bg="white")
points(cbind(c(rep(4, length(plot_vector2))), plot_vector2), col=point_colors[2], pch=19)

plot_vector1 <- x$realized_load[x$species == "Cossypha_semirufa" & x$geography == "east" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Cossypha_semirufa" & x$geography == "east" & x$time == "modern"]
lines(cbind(c(5, 6), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[1])
points(cbind(c(rep(5, length(plot_vector1))), plot_vector1), col=point_colors[1], pch=21, bg="white")
points(cbind(c(rep(6, length(plot_vector2))), plot_vector2), col=point_colors[1], pch=19)


########################
###### Crithagra tristriata
########################

plot_vector1 <- x$realized_load[x$species == "Crithagra_tristriata" & x$geography == "choke" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Crithagra_tristriata" & x$geography == "choke" & x$time == "modern"]
lines(cbind(c(9, 10), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[3])
points(cbind(c(rep(9, length(plot_vector1))), plot_vector1), col=point_colors[3], pch=21, bg="snow2")
points(cbind(c(rep(10, length(plot_vector2))), plot_vector2), col=point_colors[3], pch=19)

plot_vector1 <- x$realized_load[x$species == "Crithagra_tristriata" & x$geography == "central" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Crithagra_tristriata" & x$geography == "central" & x$time == "modern"]
lines(cbind(c(11, 12), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[2])
points(cbind(c(rep(11, length(plot_vector1))), plot_vector1), col=point_colors[2], pch=21, bg="snow2")
points(cbind(c(rep(12, length(plot_vector2))), plot_vector2), col=point_colors[2], pch=19)

plot_vector1 <- x$realized_load[x$species == "Crithagra_tristriata" & x$geography == "east" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Crithagra_tristriata" & x$geography == "east" & x$time == "modern"]
lines(cbind(c(13, 14), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[1])
points(cbind(c(rep(13, length(plot_vector1))), plot_vector1), col=point_colors[1], pch=21, bg="snow2")
points(cbind(c(rep(14, length(plot_vector2))), plot_vector2), col=point_colors[1], pch=19)


########################
###### Melaenornis
########################

plot_vector1 <- x$realized_load[x$species == "Melaenornis_chocolatinus" & x$geography == "choke" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Melaenornis_chocolatinus" & x$geography == "choke" & x$time == "modern"]
lines(cbind(c(17, 18), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[3])
points(cbind(c(rep(17, length(plot_vector1))), plot_vector1), col=point_colors[3], pch=21, bg="white")
points(cbind(c(rep(18, length(plot_vector2))), plot_vector2), col=point_colors[3], pch=19)

plot_vector2 <- x$realized_load[x$species == "Melaenornis_chocolatinus" & x$geography == "central" & x$time == "modern"]
points(cbind(c(rep(20, length(plot_vector2))), plot_vector2), col=point_colors[2], pch=19)

plot_vector1 <- x$realized_load[x$species == "Melaenornis_chocolatinus" & x$geography == "east" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Melaenornis_chocolatinus" & x$geography == "east" & x$time == "modern"]
lines(cbind(c(21, 22), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[1])
points(cbind(c(rep(21, length(plot_vector1))), plot_vector1), col=point_colors[1], pch=21, bg="white")
points(cbind(c(rep(22, length(plot_vector2))), plot_vector2), col=point_colors[1], pch=19)

########################
###### Sylvia
########################

plot_vector1 <- x$realized_load[x$species == "Sylvia_galinieri" & x$geography == "choke" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Sylvia_galinieri" & x$geography == "choke" & x$time == "modern"]
lines(cbind(c(25, 26), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[3])
points(cbind(c(rep(25, length(plot_vector1))), plot_vector1), col=point_colors[3], pch=21, bg="snow2")
points(cbind(c(rep(26, length(plot_vector2))), plot_vector2), col=point_colors[3], pch=19)

plot_vector2 <- x$realized_load[x$species == "Sylvia_galinieri" & x$geography == "central" & x$time == "modern"]
points(cbind(c(rep(28, length(plot_vector2))), plot_vector2), col=point_colors[2], pch=19)

plot_vector1 <- x$realized_load[x$species == "Sylvia_galinieri" & x$geography == "east" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Sylvia_galinieri" & x$geography == "east" & x$time == "modern"]
lines(cbind(c(29, 30), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[1])
points(cbind(c(rep(29, length(plot_vector1))), plot_vector1), col=point_colors[1], pch=21, bg="snow2")
points(cbind(c(rep(30, length(plot_vector2))), plot_vector2), col=point_colors[1], pch=19)


########################
###### Turdus
########################


plot_vector1 <- x$realized_load[x$species == "Turdus_abyssincus" & x$geography == "choke" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Turdus_abyssincus" & x$geography == "choke" & x$time == "modern"]
lines(cbind(c(33, 34), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[3])
points(cbind(c(rep(33, length(plot_vector1))), plot_vector1), col=point_colors[3], pch=21, bg="white")
points(cbind(c(rep(34, length(plot_vector2))), plot_vector2), col=point_colors[3], pch=19)

plot_vector1 <- x$realized_load[x$species == "Turdus_abyssincus" & x$geography == "central" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Turdus_abyssincus" & x$geography == "central" & x$time == "modern"]
lines(cbind(c(35, 36), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[2])
points(cbind(c(rep(35, length(plot_vector1))), plot_vector1), col=point_colors[2], pch=21, bg="white")
points(cbind(c(rep(36, length(plot_vector2))), plot_vector2), col=point_colors[2], pch=19)

plot_vector1 <- x$realized_load[x$species == "Turdus_abyssincus" & x$geography == "east" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Turdus_abyssincus" & x$geography == "east" & x$time == "modern"]
lines(cbind(c(37, 38), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[1])
points(cbind(c(rep(37, length(plot_vector1))), plot_vector1), col=point_colors[1], pch=21, bg="white")
points(cbind(c(rep(38, length(plot_vector2))), plot_vector2), col=point_colors[1], pch=19)


########################
###### Zosterops
########################

plot_vector1 <- x$realized_load[x$species == "Zosterops_poliogastrus" & x$geography == "choke" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Zosterops_poliogastrus" & x$geography == "choke" & x$time == "modern"]
lines(cbind(c(41, 42), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[3])
points(cbind(c(rep(41, length(plot_vector1))), plot_vector1), col=point_colors[3], pch=21, bg="snow2")
points(cbind(c(rep(42, length(plot_vector2))), plot_vector2), col=point_colors[3], pch=19)

plot_vector2 <- x$realized_load[x$species == "Zosterops_poliogastrus" & x$geography == "central" & x$time == "modern"]
points(cbind(c(rep(44, length(plot_vector2))), plot_vector2), col=point_colors[2], pch=19)

plot_vector1 <- x$realized_load[x$species == "Zosterops_poliogastrus" & x$geography == "east" & x$time == "historical"]
plot_vector2 <- x$realized_load[x$species == "Zosterops_poliogastrus" & x$geography == "east" & x$time == "modern"]
lines(cbind(c(45, 46), c(mean(plot_vector1), mean(plot_vector2))), lwd=1.5, col=point_colors[1])
points(cbind(c(rep(45, length(plot_vector1))), plot_vector1), col=point_colors[1], pch=21, bg="snow2")
points(cbind(c(rep(46, length(plot_vector2))), plot_vector2), col=point_colors[1], pch=19)










