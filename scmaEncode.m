%% SCMA Encoding
%input -FN:number of function
%      -VN:number of variable
%      -Data_source: the data to mapping resource
%ouput -PRE_o(a.k.a y):sending single
function [PRE_o] = scmaEncode(Data_source,CB)
%��ȡVN FN Mֵ��mֵ��ʱ����
[m, FN, VN] = size(CB);
%��ȡ���ݳ���
Data_length = length(Data_source);  
PRE_o=zeros(FN,Data_length);
for data_ind=1:Data_length
    for v=1:VN
        PRE_o(:,data_ind)=PRE_o(:,data_ind)+CB(:,Data_source(v,data_ind),v);
    end   
end

end