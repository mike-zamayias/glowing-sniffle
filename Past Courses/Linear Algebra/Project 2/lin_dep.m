#   check vectors linear dependence
function check = lin_dep(u, v, w)
    #   make matrix A from vectors, where vectors are A's columns
    A = [u; v; w]';
    #   calculate A's determinant
    det_A = det(A);
    #   if det_A != 0 then the set of vectors is linearly independent
    #   else the set is linearly dependent
    if (det_A != 0)
        disp("Given set of vectors is linearly independent.");
        check = 1;
        return;
    else
        disp("Given set of vectors is linearly dependent.");
        check = 0;
        return;
    endif
endfunction