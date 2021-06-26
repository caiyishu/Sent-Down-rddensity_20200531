*Manipulation test
//原版本的rddensity画的图找不到了，所以图片无法复现。通过更改opition尽量还原
use "Sent-Down Movement_assign value.dta", clear

*plot-1
capture drop temp*
rddensity assign, plot plot_range(-20 20) fitselect(restricted)  genvars(temp) graph_options(title("RD-density Plot: Chairman Age") xtitle("area"))

*plot-2
capture drop temp*
rddensity assign, plot plot_range(-20 20) fitselect(unrestricted)  genvars(temp) graph_options(title("RD-density Plot: Chairman Age") xtitle("area"))

*plot-3
capture drop temp*
rddensity assign, plot plot_range(-20 20) fitselect(restricted) kernel(uniform) genvars(temp) graph_options(title("RD-density Plot: Chairman Age") xtitle("area"))

*plot-4
capture drop temp*
rddensity assign, plot plot_range(-20 20) fitselect(unrestricted) kernel(uniform)  genvars(temp) graph_options(title("RD-density Plot: Chairman Age") xtitle("area"))

*plot-5
capture drop temp*
rddensity assign, plot plot_range(-20 20) fitselect(restricted)  genvars(temp) graph_options(title("RD-density Plot: Chairman Age") xtitle("area"))
drop temp*