data=readtable("C:\Users\hp\OneDrive\Desktop\MAE GROUP 3\number1.xlsx");
writetable(data,'number1.xlsx')
work.Properties.VariableName = {'NAME','TRIBE','ASSOCIATION','HOSTEL_HALL','FRIENDSINCOURSE','AGE'};

%testing for output
NAME = 'Lyaka Amelia Kirabo';
sprintf('%s Matlab Assignment.xlsx',NAME)
names_cat = categorical(data.NAME,data.NAME);
n_age =data.AGE;

% bar graph
bar(names_cat,n_age);
xlabel('NAME');
ylabel('AGE')
tribe_counts = groupcounts(data,'TRIBE');
figure;
saveas(gcf, 'name.png');
disp('Saved name.png');

% Age graph
figure(2); clf
histogram(double(string(data.AGE)));
title('Age Distribution of Students');
xlabel('Age');
ylabel('Number');
saveas(gcf,'age.png');
disp('Saved age.png');

% Association graph
figure(3); clf
histogram(categorical(string(data.ASSOCIATION)));
title('Association Distribution');
xtickangle(45);
saveas(gcf, 'association.png');
disp('Saved association.png');

% tribe graph
figure(1); clf
histogram(categorical(string(data.TRIBE)));
title('Tribe Distribution');
xlabel('Tribe'); 
ylabel('Count');
saveas(gcf, 'tribe.png');
disp('Saved tribe.png');