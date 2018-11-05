module boundary_conditions

  use shared_data

  implicit none

  private

  public :: velocity_bcs, phi_bcs, gradp_bcs, velocity_face_bcs

  contains

  subroutine velocity_bcs
    ! Currently hard-coded as doubly-periodic
    ! (this is suitable for the test problems)

    u(0,:) = u(nx,:)
    u(-1,:) = u(nx-1,:)
    u(nx+1,:) = u(1,:)
    u(nx+2,:) = u(2,:)
    u(:,0) = u(:,ny)
    u(:,-1) = u(:,ny-1)
    u(:,ny+1) = u(:,1)
    u(:,ny+2) = u(:,2)

    v(0,:) = v(nx,:)
    v(-1,:) = v(nx-1,:)
    v(nx+1,:) = v(1,:)
    v(nx+2,:) = v(2,:)
    v(:,0) = v(:,ny)
    v(:,-1) = v(:,ny-1)
    v(:,ny+1) = v(:,1)
    v(:,ny+2) = v(:,2)

    ustar(0,:) = ustar(nx,:)
    ustar(-1,:) = ustar(nx-1,:)
    ustar(nx+1,:) = ustar(1,:)
    ustar(nx+2,:) = ustar(2,:)
    ustar(:,0) = ustar(:,ny)
    ustar(:,-1) = ustar(:,ny-1)
    ustar(:,ny+1) = ustar(:,1)
    ustar(:,ny+2) = ustar(:,2)

    vstar(0,:) = vstar(nx,:)
    vstar(-1,:) = vstar(nx-1,:)
    vstar(nx+1,:) = vstar(1,:)
    vstar(nx+2,:) = vstar(2,:)
    vstar(:,0) = vstar(:,ny)
    vstar(:,-1) = vstar(:,ny-1)
    vstar(:,ny+1) = vstar(:,1)
    vstar(:,ny+2) = vstar(:,2)

  end subroutine velocity_bcs

  subroutine velocity_face_bcs 

    !uha is x faced

    uha(  -2,:) = uha(nx-2,:)
    uha(  -1,:) = uha(nx-1,:)
    uha(nx+1,:) = uha(1,:)
    uha(nx+2,:) = uha(2,:)

    uha(:,  -1) = uha(:,nx-1)
    uha(:,   0) = uha(:,nx)
    uha(:,nx+1) = uha(:,1)
    uha(:,nx+2) = uha(:,2)

    ! vha is yfaced
    vha(   0,:) = vha(nx,:)
    vha(  -1,:) = vha(nx+1,:)
    vha(nx+1,:) = vha(1,:)
    vha(nx+2,:) = vha(2,:)

    vha(:,nx+1) = vha(:,1)
    vha(:,nx+2) = vha(:,2)
    vha(:,  -1) = vha(:,nx-1)
    vha(:,  -2) = vha(:,nx-2)

    ! other x faced vel vars

    uhx(  -2,:) = uhx(nx-2,:)
    uhx(  -1,:) = uhx(nx-1,:)
    uhx(nx+1,:) = uhx(1,:)
    uhx(nx+2,:) = uhx(2,:)

    uhx(:,  -1) = uhx(:,nx-1)
    uhx(:,   0) = uhx(:,nx)
    uhx(:,nx+1) = uhx(:,1)
    uhx(:,nx+2) = uhx(:,2)

    vhx(  -2,:) = vhx(nx-2,:)
    vhx(  -1,:) = vhx(nx-1,:)
    vhx(nx+1,:) = vhx(1,:)
    vhx(nx+2,:) = vhx(2,:)

    vhx(:,  -1) = vhx(:,nx-1)
    vhx(:,   0) = vhx(:,nx)
    vhx(:,nx+1) = vhx(:,1)
    vhx(:,nx+2) = vhx(:,2)


    ! other y faced velocity vars

    uhy(   0,:) = uhy(nx,:)
    uhy(  -1,:) = uhy(nx+1,:)
    uhy(nx+1,:) = uhy(1,:)
    uhy(nx+2,:) = uhy(2,:)

    uhy(:,nx+1) = uhy(:,1)
    uhy(:,nx+2) = uhy(:,2)
    uhy(:,  -1) = uhy(:,nx-1)
    uhy(:,  -2) = uhy(:,nx-2)

    vhy(   0,:) = vhy(nx,:)
    vhy(  -1,:) = vhy(nx+1,:)
    vhy(nx+1,:) = vhy(1,:)
    vhy(nx+2,:) = vhy(2,:)

    vhy(:,nx+1) = vhy(:,1)
    vhy(:,nx+2) = vhy(:,2)
    vhy(:,  -1) = vhy(:,nx-1)
    vhy(:,  -2) = vhy(:,nx-2)

  end subroutine velocity_face_bcs 

  subroutine phi_bcs

    phi(0,:) = phi(nx,:)
    phi(-1,:) = phi(nx-1,:)
    phi(nx+1,:) = phi(1,:)
    phi(nx+2,:) = phi(2,:)
    phi(:,0) = phi(:,ny)
    phi(:,-1) = phi(:,ny-1)
    phi(:,ny+1) = phi(:,1)
    phi(:,ny+2) = phi(:,2)

  end subroutine phi_bcs

  subroutine gradp_bcs

    gradp_x(0,:) = gradp_x(nx,:)
    gradp_x(-1,:) = gradp_x(nx-1,:)
    gradp_x(nx+1,:) = gradp_x(1,:)
    gradp_x(nx+2,:) = gradp_x(2,:)
    gradp_x(:,0) = gradp_x(:,ny)
    gradp_x(:,-1) = gradp_x(:,ny-1)
    gradp_x(:,ny+1) = gradp_x(:,1)
    gradp_x(:,ny+2) = gradp_x(:,2)

    gradp_y(0,:) = gradp_y(nx,:)
    gradp_y(-1,:) = gradp_y(nx-1,:)
    gradp_y(nx+1,:) = gradp_y(1,:)
    gradp_y(nx+2,:) = gradp_y(2,:)
    gradp_y(:,0) = gradp_y(:,ny)
    gradp_y(:,-1) = gradp_y(:,ny-1)
    gradp_y(:,ny+1) = gradp_y(:,1)
    gradp_y(:,ny+2) = gradp_y(:,2)

  end subroutine gradp_bcs



end module boundary_conditions

