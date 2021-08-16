function CP3()
    tdata = (0:7)'/8;
    xdata = exp(tdata);
    y = (1/sqrt(8))*fft(xdata);
    a=real(y(1:5));
    b=imag(y(1:4));

    P8 = @(t) a(1)/sqrt(8) ...
    +(2/sqrt(8))*a(2)*cos(2*pi*t) ...
    +(2/sqrt(8))*a(3)*cos(4*pi*t) ...
    +(2/sqrt(8))*a(4)*cos(6*pi*t) ...

    -(2/sqrt(8))*b(2)*sin(2*pi*t) ...
    -(2/sqrt(8))*b(3)*sin(4*pi*t) ...
    -(2/sqrt(8))*b(4)*sin(6*pi*t) ...

    +(1/sqrt(8))*a(5)*cos(8*pi*t);

    t=(-3:131)/128;
    text=(-63:171)/128;
    plot(tdata,xdata,'o',t,exp(t),'g',text,P8(text),'r');
end