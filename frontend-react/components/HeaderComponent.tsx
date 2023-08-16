import Link from "next/link";
import { useRouter } from 'next/router';
import Swal from 'sweetalert2';
import { removeToken, getToken, removeUser } from '../services'
import { API_URL } from '../utils/'



export default function HeaderComponent() {
    const { push } = useRouter();

    const logout = () => {
      removeToken()
      removeUser()
      push('/')
      Swal.fire('Acceso', 'Cierre de sesion correcta');
    }
    const isLogin = ():boolean => {
        console.log(getToken())
        return (getToken() === '') ? false : true;
    }
    
    return (
        <>
        {/* html header - TODO */}
        <div id="header" className="header d-flex align-items-center fixed-top color-react-azulclaro">
            <div className="container-fluid container-xl d-flex align-items-center justify-content-between">

                <a href="index.html" className="logo d-flex align-items-center fix-home-menu">
                    <img src="react.svg" alt="Logo React" className="unir-logo" />
                    <img src="assets/img/Unir_2021_logo.svg" alt="Logo UNIR" className="unir-logo" />
                    <h1>TFG - FFJ: AEP</h1>
                </a>

                <i className="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
                <i className="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
                <nav id="navbar" className="navbar">
                    <ul>
                        <li><Link href="/" className="active">Home</Link></li>
                        <li className="dropdown"><Link href="/categorias"><span>Categorias</span><i className="bi bi-chevron-down dropdown-indicator"></i></Link>
                            <ul>
                                <li><a href="#">Cat 1</a></li>
                                <li><a href="#">Cat 2</a></li>
                                <li><a href="#">Cat 3</a></li>
                                <li><a href="#">Cat 4</a></li>
                            </ul>
                        </li>
                        <li><Link href="/carrito" title="carrito de la compra"><i className="bi bi-cart4" title="carito de la compra" aria-hidden="true"> carrito</i></Link></li>
                        {isLogin ? (
                            <>
                            <li className="dropdown">
                                <Link href="/mis-datos" active-class="active">
                            <span><i className="bi bi-file-person iconos-menu"> Privado</i></span>
                            <i className="bi bi-chevron-down dropdown-indicator"></i></Link>
                            <ul>
                                <li><Link href="/mis-datos">Mis datos</Link></li>
                                <li><Link href="/mis-cursos">Mis cursos</Link></li>
                                <li><Link href="#" onClick={logout}>desconectar</Link></li>
                            </ul>
                            </li>

                            </>
                            
                            ):(
                                <>
                                <li><Link href="/registro">Registro</Link></li>
                                <li><Link href="/acceso" className="get-a-quote">Acceso</Link></li>
                                </>
                        ) }

                    </ul>
                </nav>

            </div>
        </div>
        </>
    )
}