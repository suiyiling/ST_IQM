function jsdiv = jsdiv_similarity(p1,p2, normalize)

% no-normalize = 0;

if nargin < 3
    p1 = p1+eps;
    p2 = p2+eps;
end
if nargin == 3
    if normalize == 0
        p1 = p1+eps;
        p2 = p2+eps;
    else
        p1 = p1/sum(p1)+eps;
        p2 = p2/sum(p2)+eps;
    end
end

p3 = (p1+p2)/2;
JS_1 = sum( p1.*log2(p1./p3));
JS_2 = sum( p2.*log2(p2./p3));
jsdiv = (JS_1+JS_2)/2;