function checkbestofn()

    f3 = bestofn(3);
    f5 = bestofn(5);
    f7 = bestofn(7);

    probability = linspace(0,1,1000);
    
    figure
    title('The Probability of Winning Best-of-n Tournament')
    plot(probability,f3(probability), 'Linewidth', 1.5); 
    hold on;
    plot(probability,f5(probability), 'Linewidth', 1.5); 
    hold on;
    plot(probability,f7(probability), 'Linewidth', 1.5);
    xlabel('p');
    ylabel('P');
    legend({' f_3(p) ',' f_5(p) ',' f_7(p) '});
    
    if(all(all(abs(f5(probability)-(1-f5(1-probability)))<1E-12)))
        fprintf('The condition that was checked satisfied all points.\n');
    else
        fprintf('The condition that was checked did NOT satify all points.\n');
    end
    
    hold off
    
end