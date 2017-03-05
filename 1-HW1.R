exam = read.table('1-exam_results.txt', header = TRUE)

exam$scores[5]

sort(exam$scores)[5]

sort(exam$scores)[1:5]

sort(exam$scores, decreasing = TRUE)[1:5]

sd(exam$scores)

scores_diff <- abs(exam$scores - mean(exam$scores))
mean(scores_diff)

hist(exam$scores, main = 'Histogram of Exam Results', xlab = 'Scores')

plot(density(exam$scores), main = 'Density Plot of Exam Results', bty = 'l')

boxplot(exam$scores, horizontal = TRUE, xlab = 'Scores',
        main = 'Boxplot + Strip-Chart of Exam Results')
stripchart(exam$scores, method = 'stack', add = TRUE)
