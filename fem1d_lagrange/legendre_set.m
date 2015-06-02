function [ x, w ] = legendre_set ( n )

%*****************************************************************************80
%
%% LEGENDRE_SET sets abscissas and weights for Gauss-Legendre quadrature.
%
%  Discussion:
%
%    The integration interval is [ -1, 1 ].
%
%    The weight function w(x) = 1.0;
%
%    The integral to approximate:
%
%      Integral ( -1 <= X <= 1 ) F(X) dX
%
%    Quadrature rule:
%
%      Sum ( 1 <= I <= N ) W(I) * F ( X(I) )
%
%    The quadrature rule will integrate exactly all polynomials up to
%    X^(2*N-1).
%
%    The abscissas of the rule are the zeroes of the Legendre polynomial
%    P(N)(X).
%
%    The integral produced by a Gauss-Legendre rule is equal to the
%    integral of the unique polynomial of degree N-1 which
%    agrees with the function at the N abscissas of the rule.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    19 October 2009
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Milton Abramowitz, Irene Stegun,
%    Handbook of Mathematical Functions,
%    National Bureau of Standards, 1964,
%    ISBN: 0-486-61272-4,
%    LC: QA47.A34.
%
%    Vladimir Krylov,
%    Approximate Calculation of Integrals,
%    Dover, 2006,
%    ISBN: 0486445798.
%
%    Arthur Stroud, Don Secrest,
%    Gaussian Quadrature Formulas,
%    Prentice Hall, 1966,
%    LC: QA299.4G3S7.
%
%    Daniel Zwillinger, editor,
%    CRC Standard Mathematical Tables and Formulae,
%    30th Edition,
%    CRC Press, 1996,
%    ISBN: 0-8493-2479-3.
%
%  Parameters:
%
%    Input, integer N, the order of the rule.
%    N must be between 1 and 16.
%
%    Output, real X(N,1), the abscissas of the rule.
%
%    Output, real W(N,1), the weights of the rule.
%    The weights are positive, symmetric and should sum to 2.
%
  x = zeros ( n, 1 );
  w = zeros ( n, 1 );

  if ( n == 1 )

    x(1) = 0.0;

    w(1) = 2.0;

  elseif ( n == 2 )

    x(1) = - 0.577350269189625764509148780502;
    x(2) =   0.577350269189625764509148780502;

    w(1) = 1.0;
    w(2) = 1.0;

  elseif ( n == 3 )

    x(1) = - 0.774596669241483377035853079956;
    x(2) =   0.0;
    x(3) =   0.774596669241483377035853079956;

    w(1) = 5.0 / 9.0;
    w(2) = 8.0 / 9.0;
    w(3) = 5.0 / 9.0;

  elseif ( n == 4 )

    x(1) = - 0.861136311594052575223946488893;
    x(2) = - 0.339981043584856264802665759103;
    x(3) =   0.339981043584856264802665759103;
    x(4) =   0.861136311594052575223946488893;

    w(1) = 0.347854845137453857373063949222;
    w(2) = 0.652145154862546142626936050778;
    w(3) = 0.652145154862546142626936050778;
    w(4) = 0.347854845137453857373063949222;

  elseif ( n == 5 )

    x(1) = - 0.906179845938663992797626878299;
    x(2) = - 0.538469310105683091036314420700;
    x(3) =   0.0;
    x(4) =   0.538469310105683091036314420700;
    x(5) =   0.906179845938663992797626878299;

    w(1) = 0.236926885056189087514264040720;
    w(2) = 0.478628670499366468041291514836;
    w(3) = 0.568888888888888888888888888889;
    w(4) = 0.478628670499366468041291514836;
    w(5) = 0.236926885056189087514264040720;

  elseif ( n == 6 )

    x(1) = - 0.932469514203152027812301554494;
    x(2) = - 0.661209386466264513661399595020;
    x(3) = - 0.238619186083196908630501721681;
    x(4) =   0.238619186083196908630501721681;
    x(5) =   0.661209386466264513661399595020;
    x(6) =   0.932469514203152027812301554494;

    w(1) = 0.171324492379170345040296142173;
    w(2) = 0.360761573048138607569833513838;
    w(3) = 0.467913934572691047389870343990;
    w(4) = 0.467913934572691047389870343990;
    w(5) = 0.360761573048138607569833513838;
    w(6) = 0.171324492379170345040296142173;

  elseif ( n == 7 )

    x(1) = - 0.949107912342758524526189684048;
    x(2) = - 0.741531185599394439863864773281;
    x(3) = - 0.405845151377397166906606412077;
    x(4) =   0.0;
    x(5) =   0.405845151377397166906606412077;
    x(6) =   0.741531185599394439863864773281;
    x(7) =   0.949107912342758524526189684048;

    w(1) = 0.129484966168869693270611432679;
    w(2) = 0.279705391489276667901467771424;
    w(3) = 0.381830050505118944950369775489;
    w(4) = 0.417959183673469387755102040816;
    w(5) = 0.381830050505118944950369775489;
    w(6) = 0.279705391489276667901467771424;
    w(7) = 0.129484966168869693270611432679;

  elseif ( n == 8 )

    x(1) = - 0.960289856497536231683560868569;
    x(2) = - 0.796666477413626739591553936476;
    x(3) = - 0.525532409916328985817739049189;
    x(4) = - 0.183434642495649804939476142360;
    x(5) =   0.183434642495649804939476142360;
    x(6) =   0.525532409916328985817739049189;
    x(7) =   0.796666477413626739591553936476;
    x(8) =   0.960289856497536231683560868569;

    w(1) = 0.101228536290376259152531354310;
    w(2) = 0.222381034453374470544355994426;
    w(3) = 0.313706645877887287337962201987;
    w(4) = 0.362683783378361982965150449277;
    w(5) = 0.362683783378361982965150449277;
    w(6) = 0.313706645877887287337962201987;
    w(7) = 0.222381034453374470544355994426;
    w(8) = 0.101228536290376259152531354310;

  elseif ( n == 9 )

    x(1) = - 0.968160239507626089835576202904;
    x(2) = - 0.836031107326635794299429788070;
    x(3) = - 0.613371432700590397308702039341;
    x(4) = - 0.324253423403808929038538014643;
    x(5) =   0.0;
    x(6) =   0.324253423403808929038538014643;
    x(7) =   0.613371432700590397308702039341;
    x(8) =   0.836031107326635794299429788070;
    x(9) =   0.968160239507626089835576202904;

    w(1) = 0.812743883615744119718921581105E-01;
    w(2) = 0.180648160694857404058472031243;
    w(3) = 0.260610696402935462318742869419;
    w(4) = 0.312347077040002840068630406584;
    w(5) = 0.330239355001259763164525069287;
    w(6) = 0.312347077040002840068630406584;
    w(7) = 0.260610696402935462318742869419;
    w(8) = 0.180648160694857404058472031243;
    w(9) = 0.812743883615744119718921581105E-01;

  elseif ( n == 10 )

    x(1) =  - 0.973906528517171720077964012084;
    x(2) =  - 0.865063366688984510732096688423;
    x(3) =  - 0.679409568299024406234327365115;
    x(4) =  - 0.433395394129247190799265943166;
    x(5) =  - 0.148874338981631210884826001130;
    x(6) =    0.148874338981631210884826001130;
    x(7) =    0.433395394129247190799265943166;
    x(8) =    0.679409568299024406234327365115;
    x(9) =    0.865063366688984510732096688423;
    x(10) =   0.973906528517171720077964012084;

    w(1) =  0.666713443086881375935688098933E-01;
    w(2) =  0.149451349150580593145776339658;
    w(3) =  0.219086362515982043995534934228;
    w(4) =  0.269266719309996355091226921569;
    w(5) =  0.295524224714752870173892994651;
    w(6) =  0.295524224714752870173892994651;
    w(7) =  0.269266719309996355091226921569;
    w(8) =  0.219086362515982043995534934228;
    w(9) =  0.149451349150580593145776339658;
    w(10) = 0.666713443086881375935688098933E-01;

  elseif ( n == 11 )

    x(1) = -0.978228658146056992803938001;
    x(2) = -0.887062599768095299075157769;
    x(3) = -0.730152005574049324093416252;
    x(4) = -0.519096129206811815925725669;
    x(5) = -0.269543155952344972331531985;
    x(6) = 0.000000000000000000000000000;
    x(7) = 0.269543155952344972331531985;
    x(8) = 0.519096129206811815925725669;
    x(9) = 0.730152005574049324093416252;
    x(10) = 0.887062599768095299075157769;
    x(11) = 0.978228658146056992803938001;

    w(1) = 0.055668567116173666482753720443;
    w(2) = 0.12558036946490462463469429922;
    w(3) = 0.18629021092773425142609764143;
    w(4) = 0.23319376459199047991852370484;
    w(5) = 0.26280454451024666218068886989;
    w(6) = 0.27292508677790063071448352834;
    w(7) = 0.26280454451024666218068886989;
    w(8) = 0.23319376459199047991852370484;
    w(9) = 0.18629021092773425142609764143;
    w(10) = 0.12558036946490462463469429922;
    w(11) = 0.055668567116173666482753720443;

  elseif ( n == 12 )

    x(1) = -0.981560634246719250690549090;
    x(2) = -0.904117256370474856678465866;
    x(3) = -0.769902674194304687036893833;
    x(4) = -0.587317954286617447296702419;
    x(5) = -0.367831498998180193752691537;
    x(6) = -0.125233408511468915472441369;
    x(7) = 0.125233408511468915472441369;
    x(8) = 0.367831498998180193752691537;
    x(9) = 0.587317954286617447296702419;
    x(10) = 0.769902674194304687036893833;
    x(11) = 0.904117256370474856678465866;
    x(12) = 0.981560634246719250690549090;

    w(1) = 0.047175336386511827194615961485;
    w(2) = 0.10693932599531843096025471819;
    w(3) = 0.16007832854334622633465252954;
    w(4) = 0.20316742672306592174906445581;
    w(5) = 0.23349253653835480876084989892;
    w(6) = 0.24914704581340278500056243604;
    w(7) = 0.24914704581340278500056243604;
    w(8) = 0.23349253653835480876084989892;
    w(9) = 0.20316742672306592174906445581;
    w(10) = 0.16007832854334622633465252954;
    w(11) = 0.10693932599531843096025471819;
    w(12) = 0.047175336386511827194615961485;

  elseif ( n == 13 )

    x(1) = -0.984183054718588149472829449;
    x(2) = -0.917598399222977965206547837;
    x(3) = -0.801578090733309912794206490;
    x(4) = -0.642349339440340220643984607;
    x(5) = -0.448492751036446852877912852;
    x(6) = -0.230458315955134794065528121;
    x(7) = 0.000000000000000000000000000;
    x(8) = 0.230458315955134794065528121;
    x(9) = 0.448492751036446852877912852;
    x(10) = 0.642349339440340220643984607;
    x(11) = 0.80157809073330991279420649;
    x(12) = 0.91759839922297796520654784;
    x(13) = 0.98418305471858814947282945;

    w(1) = 0.040484004765315879520021592201;
    w(2) = 0.092121499837728447914421775954;
    w(3) = 0.13887351021978723846360177687;
    w(4) = 0.17814598076194573828004669200;
    w(5) = 0.20781604753688850231252321931;
    w(6) = 0.22628318026289723841209018604;
    w(7) = 0.23255155323087391019458951527;
    w(8) = 0.22628318026289723841209018604;
    w(9) = 0.20781604753688850231252321931;
    w(10) = 0.17814598076194573828004669200;
    w(11) = 0.13887351021978723846360177687;
    w(12) = 0.092121499837728447914421775954;
    w(13) = 0.040484004765315879520021592201;

  elseif ( n == 14 )

    x(1) = -0.986283808696812338841597267;
    x(2) = -0.928434883663573517336391139;
    x(3) = -0.827201315069764993189794743;
    x(4) = -0.687292904811685470148019803;
    x(5) = -0.515248636358154091965290719;
    x(6) = -0.319112368927889760435671824;
    x(7) = -0.108054948707343662066244650;
    x(8) = 0.108054948707343662066244650;
    x(9) = 0.31911236892788976043567182;
    x(10) = 0.51524863635815409196529072;
    x(11) = 0.68729290481168547014801980;
    x(12) = 0.82720131506976499318979474;
    x(13) = 0.92843488366357351733639114;
    x(14) = 0.98628380869681233884159727;

    w(1) = 0.035119460331751863031832876138;
    w(2) = 0.08015808715976020980563327706;
    w(3) = 0.12151857068790318468941480907;
    w(4) = 0.15720316715819353456960193862;
    w(5) = 0.18553839747793781374171659013;
    w(6) = 0.20519846372129560396592406566;
    w(7) = 0.21526385346315779019587644332;
    w(8) = 0.21526385346315779019587644332;
    w(9) = 0.20519846372129560396592406566;
    w(10) = 0.18553839747793781374171659013;
    w(11) = 0.15720316715819353456960193862;
    w(12) = 0.12151857068790318468941480907;
    w(13) = 0.08015808715976020980563327706;
    w(14) = 0.035119460331751863031832876138;

  elseif ( n == 15 )

    x(1) = -0.987992518020485428489565719;
    x(2) = -0.937273392400705904307758948;
    x(3) = -0.848206583410427216200648321;
    x(4) = -0.724417731360170047416186055;
    x(5) = -0.570972172608538847537226737;
    x(6) = -0.394151347077563369897207371;
    x(7) = -0.201194093997434522300628303;
    x(8) = 0.00000000000000000000000000;
    x(9) = 0.20119409399743452230062830;
    x(10) = 0.39415134707756336989720737;
    x(11) = 0.57097217260853884753722674;
    x(12) = 0.72441773136017004741618605;
    x(13) = 0.84820658341042721620064832;
    x(14) = 0.93727339240070590430775895;
    x(15) = 0.98799251802048542848956572;

    w(1) = 0.030753241996117268354628393577;
    w(2) = 0.070366047488108124709267416451;
    w(3) = 0.107159220467171935011869546686;
    w(4) = 0.13957067792615431444780479451;
    w(5) = 0.16626920581699393355320086048;
    w(6) = 0.18616100001556221102680056187;
    w(7) = 0.19843148532711157645611832644;
    w(8) = 0.20257824192556127288062019997;
    w(9) = 0.19843148532711157645611832644;
    w(10) = 0.18616100001556221102680056187;
    w(11) = 0.16626920581699393355320086048;
    w(12) = 0.13957067792615431444780479451;
    w(13) = 0.107159220467171935011869546686;
    w(14) = 0.070366047488108124709267416451;
    w(15) = 0.030753241996117268354628393577;

  elseif ( n == 16 )

    x(1) = -0.989400934991649932596154173;
    x(2) = -0.944575023073232576077988416;
    x(3) = -0.865631202387831743880467898;
    x(4) = -0.755404408355003033895101195;
    x(5) = -0.617876244402643748446671764;
    x(6) = -0.458016777657227386342419443;
    x(7) = -0.281603550779258913230460501;
    x(8) = -0.09501250983763744018531934;
    x(9) = 0.09501250983763744018531934;
    x(10) = 0.28160355077925891323046050;
    x(11) = 0.45801677765722738634241944;
    x(12) = 0.61787624440264374844667176;
    x(13) = 0.75540440835500303389510119;
    x(14) = 0.86563120238783174388046790;
    x(15) = 0.94457502307323257607798842;
    x(16) = 0.98940093499164993259615417;

    w(1) = 0.027152459411754094851780572456;
    w(2) = 0.062253523938647892862843836994;
    w(3) = 0.09515851168249278480992510760;
    w(4) = 0.12462897125553387205247628219;
    w(5) = 0.14959598881657673208150173055;
    w(6) = 0.16915651939500253818931207903;
    w(7) = 0.18260341504492358886676366797;
    w(8) = 0.18945061045506849628539672321;
    w(9) = 0.18945061045506849628539672321;
    w(10) = 0.18260341504492358886676366797;
    w(11) = 0.16915651939500253818931207903;
    w(12) = 0.14959598881657673208150173055;
    w(13) = 0.12462897125553387205247628219;
    w(14) = 0.09515851168249278480992510760;
    w(15) = 0.062253523938647892862843836994;
    w(16) = 0.027152459411754094851780572456;

  else

    fprintf ( 1, '\n' );
    fprintf ( 1, 'LEGENDRE_SET - Fatal error!\n' );
    fprintf ( 1, '  Illegal value of N = %d\n', n );
    fprintf ( 1, '  Legal values are 1 to 16.\n' );
    error ( 'LEGENDRE_SET - Fatal error!' );

  end

  return
end
