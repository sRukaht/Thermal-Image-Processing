I=csvread('Renu_3.csv',11,2);

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
      if i==166
       I(i,j)=0;
      elseif(I(i,j)<avg_temp)
            I(i,j)=0;
            else
            I(i,j)=255;
        end
    end
end

imshow(I)

hipindex=269;

for i=1:hipindex
    L(i)=0;
end

newindex=hipindex-50;

for i=1:newindex
    for j=1:n
        if(I(i,j)==255)
        L(i)=L(i)+1;
        end
    end
end

max=0;

for i=1:newindex
    L(i);
end

for i=1:newindex
    if L(i)>max
        max=L(i);
        chestindex=i;
    end
end

max=max
chestindex=chestindex
