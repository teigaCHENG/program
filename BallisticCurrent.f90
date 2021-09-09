program ballistic_current
  implicit none
  real, parameter :: pi=3.141592654           ! pi
  real, parameter :: ec=1.602176634e-19       ! electron elementary charge
  real, parameter :: kB=1.380649000e-23       ! Boltzmann constant
  real, parameter :: hbar=1.054571818e-34     ! Planck constant
  real, parameter :: epszero=8.85418781e-12   ! Vacuum permittivity
  real, parameter :: mzero=9.10938370e-31     ! electron mass
  real, parameter :: epsox=3.9*epszero        ! oxide insulator permittivity
  real, parameter :: epssi=11.8*epszero       ! silicon channel permittivity
  real, parameter :: mt=0.191*mzero           ! transverse effective mass of electron
  real, parameter :: ml=0.916*mzero           ! longitudinal effective mass of electron
  real, parameter :: mr=2/(1/ml+1/mt)         ! effective mass along radius direction in the cross section
  real, parameter :: gatewkfunc=4.5           ! workfunction of gate material 
  real, parameter :: chelecaffi=4.17          ! electron affinity of channel material
  real, parameter :: wgc=gatewkfunc-chelecaffi! workfunction difference between gate and channel
  real, parameter :: vbi=0.23                 ! built-in voltage between the source-channel junction
  real, parameter :: T=300                    ! absolute room temperature
  real, parameter :: vt=kB*T/ec               ! thermal voltage
  real, parameter :: nm=1e-9                  ! nanometer
  real, parameter :: tox=0.5*nm               ! oxide thickness
  
  real, parameter :: R=2*nm                   ! channel radius
  !real, parameter :: Lg=15*nm                ! channel length

  real :: vgs, vds                            ! gate-source voltage, drain-source voltage,
  real :: ids                                 ! drain-source current
  real :: energlvl                            ! energy level of an electron

  
end program ballistic_current

