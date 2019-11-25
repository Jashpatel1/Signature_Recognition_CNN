function [resized] = resize(im, out_dims)
    in_rows = size(im,1);
    in_cols = size(im,2);
    out_rows = out_dims(1);
    out_cols = out_dims(2);     
    S_R = in_rows / out_rows;
    S_C = in_cols / out_cols;
    [cf, rf] = meshgrid(1 : out_cols, 1 : out_rows);
    rf = rf * S_R;
    cf = cf * S_C;
    r = floor(rf);
    c = floor(cf);
    r(r < 1) = 1;
    c(c < 1) = 1;
    r(r > in_rows - 1) = in_rows - 1;
    c(c > in_cols - 1) = in_cols - 1;
    delta_R = rf - r;
    delta_C = cf - c;
    in1_ind = sub2ind([in_rows, in_cols], r, c);
    in2_ind = sub2ind([in_rows, in_cols], r+1,c);
    in3_ind = sub2ind([in_rows, in_cols], r, c+1);
    in4_ind = sub2ind([in_rows, in_cols], r+1, c+1);
    resized = zeros(out_rows, out_cols, size(im, 3));
    resized = cast(resized, class(im));

    for idx = 1 : size(im, 3)
        chan = double(im(:,:,idx)); 
        tmp = chan(in1_ind).*(1 - delta_R).*(1 - delta_C) + ...
                       chan(in2_ind).*(delta_R).*(1 - delta_C) + ...
                       chan(in3_ind).*(1 - delta_R).*(delta_C) + ...
                       chan(in4_ind).*(delta_R).*(delta_C);
        resized(:,:,idx) = cast(tmp, class(im));
    end
end

