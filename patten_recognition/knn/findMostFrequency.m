function [res] = findMostFrequency(pos)
    max_num = max(pos);
    tmp = histc(pos,max_num);
    res = max(tmp);
end