I=csvread('image11.csv',11,2);

[m,n]=size(I);

avg_temp=0;
sum_temp=0;
max_temp=0;
k=213;

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
      %if i==249 
       % I(i,j)=0;
      if(I(i,j)<avg_temp)
            I(i,j)=0;
            else
            I(i,j)=255;
        end
    end
end

imshow(I)

for k=248:m
    L(k)=0;
end

 k=248;
for i=1:k
    for j=1:n
        I(i,j)=0;
    end
end

%imshow(I)


current_temp=I(1,1);
for i=248:m
    for j=1:n-1
        if(I(i,j)==255)
           L(i)=L(i)+1;
           j_index(j)=j;
            j=j+1;
        end
        
    end
end

max=0;
for k=248:m
    L(k);
    if(L(k)>max && L(k)~=0)
        max=L(k);
        i_index=k
        for j=1:n-1
            if(I(k,j)==255)
                j_index=j
                return
            end
        end
    end
end

imshow(I)