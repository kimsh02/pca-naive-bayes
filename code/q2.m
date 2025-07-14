function [q] = hw2()

format compact
close all

% 2

% a
three = load('../three.txt');
eight = load('../eight.txt');

figure;
hold on;
imagesc(reshape(three(1,:),16,16));
title('First Line of three.txt');
saveas(gcf, 'q2a1.png')

figure;
hold on;
imagesc(reshape(eight(1,:),16,16));
title('First Line of eight.txt');
saveas(gcf, 'q2a2.png');

X = [three ; eight];
figure;
hold on;
axis image;
imagesc(reshape(mean(X),16,16));
title('16x16 Image of Sample Mean');
saveas(gcf, 'q2b.png');

X = X - mean(X);
S = (X'*X)./(size(X,1) - 1);
format shortG;
disp(S(1:5, 1:5));

[V, D] = eig(S);
D = diag(D);
[sorted, idx] = sort(D, 'descend');
% format longG;
% disp(sorted(1:5));

v1 = V(:,idx(1));
v2 = V(:,idx(2));

figure;
hold on;
imagesc(reshape(v1,16,16));
title('v1');
saveas(gcf, 'q2c1.png');

figure;
hold on;
imagesc(reshape(v2,16,16));
title('v2');
saveas(gcf, 'q2c2.png');

% size(v1);
V = [v1, v2];
% size(V);
% V;
% p = X*V;
% p(1,:)
% size(p);
p3 = three(1,:) * V
p8 = eight(1,:) * V

A = V*V';
err = [];
for i = 1:size(X,1)
    err = [err; X(i,:)*A - X(i,:)];
end
size(err);
s = sum(err.^2,2);
size(s);
format long g;
disp(sum(s)/size(X,1));

p = X*V;
figure;
hold on;
s1 = plot(p(1:200,1), p(1:200,2), 'r.', 'MarkerSize', 18);
s2 = plot(p(201:400,1), p(201:400,2),'b.', 'MarkerSize', 18);
title("Plot of 400 Digits After Projection");
xlabel("1st component");
ylabel("2nd component");
legend([s1, s2], "three's","eight's", 'FontSize', 18);
saveas(gcf, 'q2g.png');