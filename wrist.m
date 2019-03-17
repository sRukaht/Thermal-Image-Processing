I=csvread('1010.csv',11,2);

[m,n]=size(I);

avg_temp=0;
sum_temp=0;
max_temp=0;

for x=1:4
avg_temp=0;
sum_temp=0;
for i=1:m
    for j=1:n
        sum_temp=sum_temp+I(i,j);
    end
end

avg_temp=sum_temp/(n*m);

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

avg_temp=sum_temp/(n*m);


for i=1:m
    for j=1:n
      if i==2690
       I(i,j)=0;
      elseif(I(i,j)<avg_temp)
            I(i,j)=0;
            else
            I(i,j)=255;
        end
    end
end
for j=101:n
    for i=1:m
        I(i,j)=0;
    end
end

%imshow(I)

for j=1:100
    L(j)=0;
end

for j=1:100
    for i=1:m
        if(I(i,j)==255)
            L(j)=L(j)+1;
        end
    end
end

for j=1:100
    L(j);
end

max=L(1);

for j=1:100
    if(L(j)>max)
        max=L(j);
        max_index=j;
    end
end

max_index
  
min=10000
for i=max_index:100
  if L(i)<min
    min= L(i)
    wristindex=i;
    end
    end
    
    
    wrist_index_j=wristindex
    I(:,wrist_index_j)=0;
        imshow(I)
    for i=1:m
      if I(i,wrist_index_j)==255
        wrist_index_i=i
        return
        end
    end
        