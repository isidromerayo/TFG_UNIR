
import { NextPage } from 'next'
import { getToken } from '../services';

const MisCursos: NextPage = () => {

    return (
            <div className="pagina-datos container">
                <h1>Mis cursos</h1>
                <section className="detalle-curso card">

                </section>
            </div>
    )
}

export async function getServerSideProps({ req, res }:{req:any, res:any}) {
    const token = getToken();
    if (!token) {
      res.writeHead(307, { Location: "/acceso" });
      res.end();
    }
    return { props: {} };
  
  }

export default MisCursos