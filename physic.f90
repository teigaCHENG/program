module global
	implicit none
	real, parameter :: ec = 1.60218e-19 ! elementary charge [C]
	real, parameter :: hb = 1.05457e-34 ! planck constant [Js]
	real, parameter :: kb = 1.38065e-23 ! Boltzmman constant [J/K]
	real, parameter :: elzr = 8.85419e-12 ! vaccum permitiviity [F/m]
	real, parameter :: elox = 3.9*elzr  ! Oxide permitiviity [F/m]
	real, parameter :: elsi = 11.8*elzr ! Silicon permitiviity [F/m]
	real, parameter :: mzr = 9.10938e-31 ! effecive mass of electron in vaccum [kg]
	real, parameter :: mt = 0.191*mzr   ! transverse effective mass of electron in Silicon [kg]
	real, parameter :: ml = 0.916*mzr   ! longitudinal effecive mass of electron in Silicon [kg]
	real, parameter :: mr = 2/(1/mt + 1/ml) ! effecive mass along radius direction in cross [kg] section in Silicon
	real, parameter :: pi = 3.1415926   ! pi constant
	real, parameter :: T = 300          ! absolute temperature [K]
	real, parameter :: vt = kb*T/ec     ! thermal voltage [V]
	real, parameter :: gwf = 4.5        ! workfunction of gate material from SILVACO [eV]
	real, parameter :: cea = 4.17       ! electron affinity of channel material from SILVACO [eV]
	real, parameter :: wgc = gwf - cea  ! workfunction difference between gate and channel [eV]
	real, parameter :: wfb = 0          ! conduction band edge under flat-band condition [eV]
	real, parameter :: nm = 10e-9       ! nanometer
end module