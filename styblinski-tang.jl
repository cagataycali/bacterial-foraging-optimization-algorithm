# Description:
# Dimensions: d
#
# The Styblinski-Tang function is shown here in its two-dimensional form.
#
# Input Domain:
# The function is usually evaluated on the hypercube xi ∈ [-5, 5], for all i = 1, …, d.
#
# Global Minimum:
# https://www.sfu.ca/~ssurjano/stybtang3.png

function styblinskiTang(xx)
    d = length(xx);
    sum = 0;
    for ii = 1:d
       	xi = xx[ii];
       	new = xi^4 - 16 * xi^2 + 5 * xi;
       	sum = sum + new;
    end

    y = sum / 2;

    return [y]
end
