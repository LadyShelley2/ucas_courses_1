load('mnist.mat');
train_data_num = size(training_image,2);
test_data_num = size(testing_image,2);
k=10;

% ?????????
for i=1:test_data_num
    for j = 1:train_data_num
        dis(i,j)= Euclidean(testing_image(:,i),training_image(:,j));
    end
end

% ???????
for i=1:test_data_num
     [b,pos]=sort(dis(i,:));
     sorted_pos=training_label(pos(1:k));
     predict_label(i)=findMostFrequency(sorted_pos);
end

% ?????
correct_rate = sum(testing_label==predict_label)/test_data_num;

