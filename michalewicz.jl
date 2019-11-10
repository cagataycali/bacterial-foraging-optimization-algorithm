# Description:
# Dimensions: d
#
# The Michalewicz function has d! local minima, and it is multimodal. The parameter m defines the steepness of they valleys and ridges; a larger m leads to a more difficult search. The recommended value of m is m = 10. The function's two-dimensional form is shown in the plot above.
#
# Input Domain:
# The function is usually evaluated on the hypercube xi ∈ [0, π], for all i = 1, …, d.
#
# Global Minima:
# https://www.sfu.ca/~ssurjano/michal3.png

function michal(xx, m = 10)

    d = length(xx);
    sum = 0;

    for ii = 1:d
       	xi = xx[ii];
       	new = sin(xi) * (sin(ii * xi^2 / pi))^(2 * m);
       	sum  = sum + new;
    end

    y = -sum;

    return [y]
end
