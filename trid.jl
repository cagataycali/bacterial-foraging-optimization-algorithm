# Description:
# Dimensions: d

# The Trid function has no local minimum except the global one. It is shown here in its two-dimensional form.

# Input Domain:
# The function is usually evaluated on the hypercube xi ∈ [-d2, d2], for all i = 1, …, d.

# Global Minimum:
# https://www.sfu.ca/~ssurjano/trid3.png

function trid(xx)
    d = length(xx);
    sum1 = (xx[1] - 1)^2;
    sum2 = 0;

    for ii = 2:d
        xi = xx[ii];
        xold = xx[ii - 1];
        sum1 = sum1 + (xi - 1)^2;
        sum2 = sum2 + xi * xold;
    end

    y = sum1 - sum2;

    return [y]
end
