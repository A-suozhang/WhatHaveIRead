
% -------------------------------------------
% Generte Data Here and Specify Num

num_of_params = 100;
data_radix = 16;
data = [1,2,3,4,56,7,8,9,56,56,56,53];
% data = randi(100,1,100);    
% data = 1:0.1:2;

f = fopen("test.coe","wt");
fprintf(f, "memory_initialization_radix = %d ; \n", data_radix);
fprintf(f, "memory_initialization_vector = ");
fprintf(f, "%x, \n",data);  % Write HEX
fseek(f,-4,1);  % �ļ�ָ����ǰ�ƶ�nλ������','�ĳ�';'
fprintf(f, ";");
fclose(f);