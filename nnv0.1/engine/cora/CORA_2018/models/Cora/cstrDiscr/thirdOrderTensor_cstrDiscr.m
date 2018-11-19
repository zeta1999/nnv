function Tf = thirdOrderTensor_cstrDiscr(x,u,T)



 Tf{1,1} = interval(sparse(4,4),sparse(4,4));

Tf{1,1}(2,2) = (1260000000000000*T*exp(-8750/(x(2) + 350)))/((T/2 + 1)*(x(2) + 350)^3) - (5512500000000000000*T*exp(-8750/(x(2) + 350)))/((T/2 + 1)*(x(2) + 350)^4);


 Tf{1,2} = interval(sparse(4,4),sparse(4,4));

Tf{1,2}(2,1) = (1260000000000000*T*exp(-8750/(x(2) + 350)))/((T/2 + 1)*(x(2) + 350)^3) - (5512500000000000000*T*exp(-8750/(x(2) + 350)))/((T/2 + 1)*(x(2) + 350)^4);
Tf{1,2}(1,2) = (1260000000000000*T*exp(-8750/(x(2) + 350)))/((T/2 + 1)*(x(2) + 350)^3) - (5512500000000000000*T*exp(-8750/(x(2) + 350)))/((T/2 + 1)*(x(2) + 350)^4);
Tf{1,2}(2,2) = (33075000000000000000*T*exp(-8750/(x(2) + 350))*(x(1) + 1/2))/((T/2 + 1)*(x(2) + 350)^5) - (3780000000000000*T*exp(-8750/(x(2) + 350))*(x(1) + 1/2))/((T/2 + 1)*(x(2) + 350)^4) - (48234375000000000000000*T*exp(-8750/(x(2) + 350))*(x(1) + 1/2))/((T/2 + 1)*(x(2) + 350)^6);


 Tf{1,3} = interval(sparse(4,4),sparse(4,4));



 Tf{1,4} = interval(sparse(4,4),sparse(4,4));



 Tf{2,1} = interval(sparse(4,4),sparse(4,4));

Tf{2,1}(2,2) = (275625000000000000000000*T*exp(-8750/(x(2) + 350)))/(239*((739*T)/478 + 1)*(x(2) + 350)^4) - (63000000000000000000*T*exp(-8750/(x(2) + 350)))/(239*((739*T)/478 + 1)*(x(2) + 350)^3);


 Tf{2,2} = interval(sparse(4,4),sparse(4,4));

Tf{2,2}(2,1) = -((63000000000000000000*T*exp(-8750/(x(2) + 350)))/(239*(x(2) + 350)^3) - (275625000000000000000000*T*exp(-8750/(x(2) + 350)))/(239*(x(2) + 350)^4))/((739*T)/478 + 1);
Tf{2,2}(1,2) = (275625000000000000000000*T*exp(-8750/(x(2) + 350)))/(239*((739*T)/478 + 1)*(x(2) + 350)^4) - (63000000000000000000*T*exp(-8750/(x(2) + 350)))/(239*((739*T)/478 + 1)*(x(2) + 350)^3);
Tf{2,2}(2,2) = ((189000000000000000000*T*exp(-8750/(x(2) + 350))*(x(1) + 1/2))/(239*(x(2) + 350)^4) - (1653750000000000000000000*T*exp(-8750/(x(2) + 350))*(x(1) + 1/2))/(239*(x(2) + 350)^5) + (2411718750000000000000000000*T*exp(-8750/(x(2) + 350))*(x(1) + 1/2))/(239*(x(2) + 350)^6))/((739*T)/478 + 1);


 Tf{2,3} = interval(sparse(4,4),sparse(4,4));



 Tf{2,4} = interval(sparse(4,4),sparse(4,4));

