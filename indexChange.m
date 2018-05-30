function output = indexChange(folderAddress, outputAddress)
srcFiles = dir( strcat(folderAddress,'/', '*.png') );
numFiles= length(srcFiles);
%% change value of gray image in the folder one by one
for i = 1 : numFiles
    %% load a image    
    imName = srcFiles(i,1).name; % call name of a image
    img = imread( strcat(folderAddress, '/', imName) ); % load the image
    %% find pixel index of objects in the image
    road = find(img==0);
    sidewalk = find(img==1);
    building = find(img==2);
    wall = find(img==3);
    fence = find(img==4);
    pole = find(img==5);
    trafficLight = find(img==6);
    trafficSign = find(img==7);
    vegetation = find(img==8);
    terrain = find(img==9);
    sky = find(img==10);
    person = find(img==11);
    rider = find(img==12);
    car = find(img==13);
    truck = find(img==14);
    bus = find(img==15);
    train = find(img==16);
    motorcycle = find(img==17);
    bicycle = find(img==18);
    
    %% change pixel value
    img(road) = 7;
    img(sidewalk) = 8;
    img(building) = 11;
    img(wall)=12;
    img(fence) = 13;
    img(pole)= 17;
    img(trafficLight) = 19;
    img(trafficSign) = 20;
    img(vegetation) = 21;
    img(terrain) =22;
    img(sky) = 23;
    img(person) = 24;
    img(rider)= 25;
    img(car) = 26;
    img(truck) = 27;
    img(bus) = 28;
    img(train) = 31;
    img(motorcycle) = 32;
    img(bicycle) = 33;
    
    imwrite( img, strcat(outputAddress, '/', imName) );
end
end