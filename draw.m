%% ≤‚ ‘windowkeypressfcnœÏ”¶∫Ø ˝
function keypress_test
clc
close all
clear all
%%
fig = figure(1);
x=0;
y=0;
z=0;
figure(1)
state=0;
pre=1;
MarkerSize=5;
scatter3(x,y,z,MarkerSize,'b+');
view(-30,2)
count=1;
poi=zeros(500,4);
poi(count,1)=x;
poi(count,2)=y;
poi(count,3)=z;
poi(count,4)=MarkerSize;
axis([-100 100 -100 100 -100 100])
% axis([-50 50 -50 50 -50 50])
xlabel('x÷·');
ylabel('y÷·');
zlabel('z÷·');
set(gca,'xcolor',[1 0 0]);
set(gca,'ycolor',[0 1 1]);
set(gca,'zcolor',[0 0 1]);
hold on
% figure(2)
% scatter3(0,0,0,'r');
% axis([-10 10 -10 10 -10 10])
% xlabel('x÷·');
% ylabel('y÷·');
% zlabel('z÷·');
% hold on

set(fig,'windowkeypressfcn',@keypressfcn)
% set(fig,'windowkeyreleasefcn',@keyreleasefcn);

%%[0,90] «xy∆Ω√Ê [0,0] «xz∆Ω√Ê [90£¨0] «yz∆Ω√Ê
%%[90,90]       [180,0]      [-90,0]
%%[-90,90]     
    
function keypressfcn(h,evt)
%         fprintf('************press \n');
        call=evt.Key
        
        [az, el] = view;
        switch(call)
            case ('equal')%± À¢‘ˆ¥Û
                MarkerSize=MarkerSize+1;
            case ('hyphen')%± À¢ºı–°
                MarkerSize=MarkerSize-1;
            case ('w')
                x=x+abs(sin(az*pi/180))*sin(el*pi/180);y=y+cos(az*pi/180)*sin(el*pi/180);z=z+cos(el*pi/180);
                
                if(state)
                    figure(1);scatter3(x,y,z,MarkerSize,'r');
                    count=count+1;
                    poi(count,1)=x;
                    poi(count,2)=y;
                    poi(count,3)=z;
                    poi(count,4)=MarkerSize;
                    save A.mat poi
                else
                    figure(1);scatter3(x,y,z,MarkerSize,'b+');
                end
            case ('s')
                x=x-abs(sin(az*pi/180))*sin(el*pi/180);y=y-cos(az*pi/180)*sin(el*pi/180);z=z-cos(el*pi/180);
                
                if(state)
                    figure(1);scatter3(x,y,z,MarkerSize,'r');
                    count=count+1;
                    poi(count,1)=x;
                    poi(count,2)=y;
                    poi(count,3)=z;
                    poi(count,4)=MarkerSize;
                    save A.mat poi
                else
                    figure(1);scatter3(x,y,z,MarkerSize,'b+');
                end
            case ('a')
                x=x-cos(az*pi/180);y=y-sin(az*pi/180);
                    
                if(state)
                    figure(1);scatter3(x,y,z,MarkerSize,'r');
                    count=count+1;
                    poi(count,1)=x;
                    poi(count,2)=y;
                    poi(count,3)=z;
                    poi(count,4)=MarkerSize;
                    save A.mat poi
                else
                    figure(1);scatter3(x,y,z,MarkerSize,'b+');
                end
            case ('d')
                x=x+cos(az*pi/180);y=y+sin(az*pi/180);
                    
                if(state)
                    figure(1);scatter3(x,y,z,MarkerSize,'r');
                    count=count+1;
                    poi(count,1)=x;
                    poi(count,2)=y;
                    poi(count,3)=z;
                    poi(count,4)=MarkerSize;
                    save A.mat poi
                else
                    figure(1);scatter3(x,y,z,MarkerSize,'b+');
                end
            case ('q')
                x=x-cos(az*pi/180)+abs(sin(az*pi/180))*sin(el*pi/180);y=y-sin(az*pi/180)+cos(az*pi/180)*sin(el*pi/180);z=z+cos(el*pi/180);
                    
                if(state)
                    figure(1);scatter3(x,y,z,MarkerSize,'r');
                    count=count+1;
                    poi(count,1)=x;
                    poi(count,2)=y;
                    poi(count,3)=z;
                    poi(count,4)=MarkerSize;
                    save A.mat poi
                else
                    figure(1);scatter3(x,y,z,MarkerSize,'b+');
                end
            case ('e')
                x=x+cos(az*pi/180)+abs(sin(az*pi/180))*sin(el*pi/180);y=y+sin(az*pi/180)+cos(az*pi/180)*sin(el*pi/180);z=z+cos(el*pi/180);
                    
                if(state)
                    figure(1);scatter3(x,y,z,MarkerSize,'r');
                    count=count+1;
                    poi(count,1)=x;
                    poi(count,2)=y;
                    poi(count,3)=z;
                    poi(count,4)=MarkerSize;
                    save A.mat poi
                else
                    figure(1);scatter3(x,y,z,MarkerSize,'b+');
                end
            case ('z')
                x=x-cos(az*pi/180)-abs(sin(az*pi/180))*sin(el*pi/180);y=y-sin(az*pi/180)-cos(az*pi/180)*sin(el*pi/180);z=z-cos(el*pi/180);
                    
                if(state)
                    figure(1);scatter3(x,y,z,MarkerSize,'r');
                    count=count+1;
                    poi(count,1)=x;
                    poi(count,2)=y;
                    poi(count,3)=z;
                    poi(count,4)=MarkerSize;
                    save A.mat poi
                else
                    figure(1);scatter3(x,y,z,MarkerSize,'b+');
                end
            case ('c')
                x=x+cos(az*pi/180)-abs(sin(az*pi/180))*sin(el*pi/180);y=y+sin(az*pi/180)-cos(az*pi/180)*sin(el*pi/180);z=z-cos(el*pi/180);
                    
                if(state)
                    figure(1);scatter3(x,y,z,MarkerSize,'r');
                    count=count+1;
                    poi(count,1)=x;
                    poi(count,2)=y;
                    poi(count,3)=z;
                    poi(count,4)=MarkerSize;
                    save A.mat poi
                else
                    figure(1);scatter3(x,y,z,MarkerSize,'b+');
                end
            case ('leftarrow')
                view(az-1,el);az=az-10;
            case ('rightarrow')
                view(az+1,el);az=az+10;
            case ('downarrow')
                view(az,el-1);el=el-10;
            case ('uparrow')
                view(az,el+1);el=el+10;

            case ('r')%≤¡≥˝
                figure(1);scatter3(x,y,z,MarkerSize,'w');
                poi(count,1)=0;
                poi(count,2)=0;
                poi(count,3)=0;
                poi(count,4)=0;
                count=count-1;
            case ('space')
                state=mod(state+1,2);
                figure(2)
                subplot(2,2,1)
                plot3(poi(pre:count,1),poi(pre:count,2),poi(pre:count,3),'r','linewidth',MarkerSize);
                hold on
                xlabel('x÷·');
                ylabel('y÷·');
                zlabel('z÷·');
                set(gca,'xcolor',[1 0 0]);
                set(gca,'ycolor',[0 1 1]);
                set(gca,'zcolor',[0 0 1]);
                subplot(2,2,2)
                plot3(poi(pre:count,1),poi(pre:count,2),poi(pre:count,3),'r','linewidth',MarkerSize);
                hold on
                view(0,90);
                xlabel('x÷·');
                ylabel('y÷·');
                zlabel('z÷·');
                set(gca,'xcolor',[1 0 0]);
                set(gca,'ycolor',[0 1 1]);
                set(gca,'zcolor',[0 0 1]);
                subplot(2,2,3)
                plot3(poi(pre:count,1),poi(pre:count,2),poi(pre:count,3),'r','linewidth',MarkerSize);
                hold on
                view(0,0);
                xlabel('x÷·');
                ylabel('y÷·');
                zlabel('z÷·');
                set(gca,'xcolor',[1 0 0]);
                set(gca,'ycolor',[0 1 1]);
                set(gca,'zcolor',[0 0 1]);
                subplot(2,2,4)
                plot3(poi(pre:count,1),poi(pre:count,2),poi(pre:count,3),'r','linewidth',MarkerSize);
                hold on
                view(90,0);
                xlabel('x÷·');
                ylabel('y÷·');
                zlabel('z÷·');
                set(gca,'xcolor',[1 0 0]);
                set(gca,'ycolor',[0 1 1]);
                set(gca,'zcolor',[0 0 1]);
                figure(1)
                pre=count+1;
            
            

        end
        
%         fprintf('************ \n');
end

end


% %% ≤‚ ‘windowkeypressfcnœÏ”¶∫Ø ˝
% function keypress_test
% clc
% close all
% clear all
% %%
% fig = figure(1);
% x=0;
% y=0;
% z=0;
% figure(1)
% scatter3(0,0,0,'r');
% axis([-10 10 -10 10 -10 10])
% xlabel('x÷·');
% ylabel('y÷·');
% zlabel('z÷·');
% hold on
% figure(2)
% scatter3(0,0,0,'r');
% axis([-10 10 -10 10 -10 10])
% xlabel('x÷·');
% ylabel('y÷·');
% zlabel('z÷·');
% hold on
% set(fig,'windowkeypressfcn',@keypressfcn)
% % set(fig,'windowkeyreleasefcn',@keyreleasefcn);
% 
% %%[0,90] «xy∆Ω√Ê [0,0] «xz∆Ω√Ê [90£¨0] «yz∆Ω√Ê
% %%[90,90]       [180,0]      [-90,0]
% %%[-90,90]     
%     
% function call=keypressfcn(h,evt)
%         fprintf('************press \n');
%         call=evt.Key
%         [az, el] = view
%         cos(el)
%         switch(call)
%             case ('w')
%                 x=x+abs(sin(az*pi/180))*sin(el*pi/180);y=y+cos(az*pi/180)*sin(el*pi/180);z=z+cos(el*pi/180);
%                 figure(1);scatter3(x,y,z,'r');
%                 figure(2);scatter3(x,y,z,'r');return
%             case ('s')
%                 x=x-abs(sin(az*pi/180))*sin(el*pi/180);y=y-cos(az*pi/180)*sin(el*pi/180);z=z-cos(el*pi/180);
%                 figure(1);scatter3(x,y,z,'r');
%                 figure(2);scatter3(x,y,z,'r');return
%             case ('a')
%                 x=x-cos(az*pi/180);y=y-sin(az*pi/180);
%                 figure(1);scatter3(x,y,z,'r');
%                 figure(2);scatter3(x,y,z,'r');return
%             case ('d')
%                 x=x+cos(az*pi/180);y=y+sin(az*pi/180);
%                 figure(1);scatter3(x,y,z,'r');
%                 figure(2);scatter3(x,y,z,'r');return
%         
%         end
%         
%         
%         fprintf('************ \n');
% end
% 
% 
% end




% %% ≤‚ ‘windowkeypressfcnœÏ”¶∫Ø ˝
% function keypress_test
% clc
% close all
% clear all
% %%
% fig = figure;
% plot3(1:10,1:10,1:10)
% set(fig,'windowkeypressfcn',@keypressfcn);
% set(fig,'windowkeyreleasefcn',@keyreleasefcn);
% 
%     
%     
% function keypressfcn(h,evt)
%         fprintf('************press \n');
%         evt
%         fprintf('************ \n');
% end
% function keyreleasefcn(h,evt)
%         fprintf('************release \n');
%         evt
%         fprintf('************ \n');
% end
% 
% end