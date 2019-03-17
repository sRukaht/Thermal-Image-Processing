I=csvread('image13.csv',11,2);


[m,n]=size(I);
k=0;

avg_temp=0;
sum_temp=0;
max_temp=0;
k=160;

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
      %if i==254
       % I(i,j)=0;

        if(I(i,j)<avg_temp)
            I(i,j)=0;
            else
            I(i,j)=255;
        end
    end
end

%imshow(I)

for k=1:m
    L(k)=0;
end



current_temp=I(1,1);
k=1;
l=1;
for j=1:n-1
for i=1:m
    
        if(I(i,j)==255)
           L(j)=L(j)+1;
        end
        
    end
end

for k=1:n
    L(k)
end

k=1;
max_length=L(k);
for k=1:n-1
  if(L(k)>max_length)
  max_length=L(k);
  index_max=k;
  end
end

for i=1:m
    for j=1:n-1
        if j==254
            I(i,j)=0;
        end
    end
end
imshow(I)

max_length  