function [accu_dzdw, accu_dzdb] = average_gradients2(Frames,opts)
%   Detailed explanation goes here
n_frames_2=opts.lstm2.n_frames;

    if isfield(Frames{1},'dzdw')&& ~isempty(Frames{1}.dzdw)
        accu_dzdw=0;
        for f=1:n_frames_2
            accu_dzdw=accu_dzdw+Frames{f}.dzdw;
        end
        accu_dzdw=accu_dzdw./n_frames_2;
    end

    if isfield(Frames{1},'dzdb')&&~isempty(Frames{1}.dzdb)
        accu_dzdb=0;
        for f=1:n_frames_2
            accu_dzdb=accu_dzdb+Frames{f}.dzdb;
        end 
        accu_dzdb=accu_dzdb./n_frames_2;
    end        

    

end

