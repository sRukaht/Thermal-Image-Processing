I=csvread('39.csv',11,2);

[m,n]=size(I);
k=0;

avg_temp=0;
sum_temp=0;
max_temp=0;
k=160;

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


sum_temp=0;
for i=1:m
    for j=1:n
        sum_temp=sum_temp+I(i,j);
    end
end


avg_temp=sum_temp/(n*m)

for i=1:m
    for j=1:n
       if(i==59)
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

u=160; 

for i=160:m
    for j=1:n
        I(i,j)=0;
    end
end
%imshow(I)


current_temp=I(1,1);
k=1;
l=1;
for i=1:u
    for j=1:n-1
        if(I(i,j)==255)
           L(i)=i;
           j_index(j)=j;
            j=j+1;
        end
    end
end

for k=1:u
    L(k);
    
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
  if(diff(k)==0)
  index_shoulder=k
  end
end
