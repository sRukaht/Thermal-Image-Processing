I=csvread('Keerthana.csv',11,2);

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
      if i==1400
        I(i,j)=0;

        elseif(I(i,j)<avg_temp)
            I(i,j)=0;
            else
            I(i,j)=255;
        end
    end
end

imshow(I)

for k=1:m
    L(k)=0;
end

u=300; 

for i=300:m
    for j=1:n
        I(i,j)=0;
    end
end
imshow(I)


current_temp=I(1,1);
k=1;
l=1;
for i=1:u
    for j=1:n-1
        if(I(i,j)==255)
           L(i)=L(i)+1;
           j_index(j)=j;
            j=j+1;
        end
        
    end
end

for k=1:u
    L(k)
    if L(k)==20000
      l=k
    end
end

k=1;
first=L(k);
k=2;
flag=0;
while(k<=u)
    second= L(k);
    diff(k)=second-first;
    first=second;
        k=k+1;
end

for k=1:u
    if(diff(k)<0)
       while(diff(k)<=0 && k<u) 
       k=k+1;
       end
       flag=1;
    end
    if(flag==1)
    diff(k);
    neck__length = L(k)
    row_index=k
    for j=1:n-1
        h=0;
    if(I(row_index,j)==255)
        col_index=j
        return
    end
end

    return
    end
end

%imshow(I)
%imshow(I)