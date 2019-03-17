I=csvread('Renu_2.csv',11,2);
[m,n]=size(I);

avg_temp=0;
sum_temp=0;


for x=1:4
avg_temp=0;
sum_temp=0;
for i=1:m
    for j=1:n
        sum_temp=sum_temp+I(i,j);
    end
end

avg_temp=sum_temp/(n*m)

for i=1:m
    for j=1:n
        if(I(i,j)<avg_temp)
            I(i,j)=avg_temp;
        end
    end
end
end

sum_temp=0;
for i=1:m
    for j=1:n
        sum_temp=sum_temp+I(i,j);
    end
end

avg_temp=sum_temp/(n*m)


for i=1:m
    for j=1:n
      if i==258
        I(i,j)=0;
      elseif(I(i,j)<avg_temp)
            I(i,j)=0;
            else
            I(i,j)=255;
        end
    end
end

for i=1:m
    for j=1:n
        if I(i,j)==255
            first_index_i=i
            first_index_j=j
            return
        end
    end
end

imshow(I)