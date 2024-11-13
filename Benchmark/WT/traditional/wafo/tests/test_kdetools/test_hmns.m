function test_suite=test_hmns()
  initTestSuite;
end
function test_hmns_()
   % data = rndnorm(0, 1, 10, 2); 
  data = [-0.0233845632050972   0.9070186193622006;... 
           0.6529594866766634   1.3689145060433903;... 
           0.4477857310723146  -0.6311953712037597;... 
          -1.9256785038579962   0.5886257667993168;... 
          -0.5290011931824666  -0.3602090880229930]; 
  assert(hmns(data,'epan'), [1.8897794596118287, 0.0399142070351313;... 
                             0.0399142070351313,   1.5551985456530106], 1e-10); 
  assert(hmns(data,'biwe'), [ 2.1856344490982642,   0.0461629876760024;...
                              0.0461629876760024,   1.7986731199125918], 1e-10); 
  assert(hmns(data,'triw'), [ 2.4547966021766752,   0.0518479864462823;... 
                              0.0518479864462822,   2.0201807603323689], 1e-10); 
  assert(hmns(data,'gauss'), [ 0.7867937827489343,   0.0166179443738084;... 
                              0.0166179443738084,   0.6474938334398618], 1e-10);
end
