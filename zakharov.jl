# Description:
# Dimensions: d

# The Zakharov function has no local minima except the global one. It is shown here in its two-dimensional form.

# Input Domain:
# The function is usually evaluated on the hypercube xi ∈ [-5, 10], for all i = 1, …, d.

# Global Minimum:
# https://www.sfu.ca/~ssurjano/zakharov3.png

function zakharov(xx)
    d = length(xx);
    sum1 = 0;
    sum2 = 0;

    for ii = 1:d
       	xi = xx[ii];
       	sum1 = sum1 + xi^2;
       	sum2 = sum2 + 0.5 * ii * xi;
    end

    y = sum1 + sum2^2 + sum2^4;

    return [y]
end
