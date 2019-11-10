# Description:
# Dimensions: 2
#
# The Cross-in-Tray function has multiple global minima. It is shown here with a smaller domain in the second plot, so that its characteristic "cross" will be visible.
#
# Input Domain:
# The function is usually evaluated on the square xi ∈ [-10, 10], for all i = 1, 2.
#
# Global Minima:
# https://www.sfu.ca/~ssurjano/crossit3a.png

function crossit(xx)

    x1 = xx[1];
    x2 = xx[2];

    fact1 = sin(x1) * sin(x2);
    fact2 = exp(abs(100 - sqrt(x1^2 + x2^2) / pi));

    y = -0.0001 * (abs(fact1 * fact2) + 1)^0.1;

    return [y]
end