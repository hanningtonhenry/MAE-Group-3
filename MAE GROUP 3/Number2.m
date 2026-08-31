% Semester 1
n1 = input('Enter number of courses:');
totalPoints1 = 0;
totalUnits1 = 0;

for i = 1:n1
    fprintf('\nCourse %d,Sem_1\n', i);
    creditunit = input('creditunit: ');
    mark = input('Mark (0-100):');
    
    % Changing mark to point
    if mark >= 80
        point = 5;
    elseif mark >= 75
        point = 4.5;
    elseif mark >= 70
        point = 4;
    elseif mark >= 65
        point = 3.5;
    elseif mark >= 60
        point = 3;
    elseif mark >= 55
        point = 2.5;
    elseif mark >= 50
        point = 2;
    else
        point = 0;
    end
end
    
totalPoints1=totalPoints1+(creditunit*point);
totalUnits1=totalUnits1+creditunit;

GPA1=totalPoints1/totalUnits1;
fprintf('GPA Sem_1%.2f\n', GPA1);

% Semester 2
n2 = input('Enter number of courses:');
totalPoints2 = 0;
totalUnits2 = 0;

for i = 1:n2
    fprintf('\nCourse %d - Sem 2\n',i);
    creditunit=input('creditunit:');
    mark=input('Mark (0-100):');
    
    if mark >= 80
        point = 5;
    elseif mark >= 75
        point = 4.5;
    elseif mark >= 70
        point = 4;
    elseif mark >= 65
        point = 3.5;
    elseif mark >= 60
        point = 3;
    elseif mark >= 55
        point = 2.5;
    elseif mark >= 50
        point = 2;
    else
        point = 0;
    end
end

totalPoints2 = totalPoints2 + (creditunit * point);
totalUnits2 = totalUnits2 + creditunit;

GPA2 = totalPoints2 / totalUnits2;
fprintf('GPA Sem 2%.2f\n', GPA2);

CGPA = (totalPoints1 + totalPoints2) / (totalUnits1 + totalUnits2);
fprintf('CGPA%.2f\n', CGPA);