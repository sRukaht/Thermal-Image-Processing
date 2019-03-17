I=csvread('310.csv',11,2);

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
      if i==324
        I(i,j)=0;
      elseif(I(i,j)<avg_temp)
            I(i,j)=0;
            else
            I(i,j)=255;
        end
    end
end


%imshow(I)
k=320;
for i=1:k
    for j=1:n
        I(i,j)=0;
    end
end

imshow(I)

for i=321:m
    L(i)=0;
end

current_temp=I(1,1);
for i=321:m
    for j=1:n-1
        if(I(i,j)==255)
           L(i)=L(i)+1;
           j_index(j)=j;    
            j=j+1;
        end
        
    end
end

for k=321:m
  L(k);
  end
  
  
k=321;
first=L(k);
k=322;
flag=0;
while(k<=m)
    second= L(k);
    diff(k)=second-first;
    first=second;
        k=k+1;
end

for k=320:m
  a=diff(k);
  end
  
for k=322:m
    if(diff(k)>0)
   %if(L(k)==76)
    flag=1;
    diff(k);
    knee_sidelength = L(k)
    row_index=k
    return
    end
end

for j=1:n-1
        if(I(row_index,j)==255)
            col_index=j;
            return
        end
    end