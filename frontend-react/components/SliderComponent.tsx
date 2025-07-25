import { useRouter } from "next/router"
import { FormEvent } from "react"
import Image from 'next/image';

export default function SliderComponent() {

  const router = useRouter();
  const { push } = router;

  async function buscarCursos(event: FormEvent<HTMLFormElement>) {
    event.preventDefault()
    const formData = new FormData(event.currentTarget)
    const query = formData.get('query');
    if (typeof query === 'string') {
      push(`/busqueda/${query}`);
    }
  }

  return (
    <section id="hero" className="hero d-flex align-items-center">
      <div className="container">
        <div className="row gy-4 d-flex justify-content-between">
          <div className="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center">

            <h2>Encuentra tu curso</h2>
            <p>Facere distinctio molestiae nisi fugit tenetur repellat non praesentium nesciunt optio quis sit odio nemo
              quisquam. eius quos reiciendis eum vel eum voluptatem eum maiores eaque id optio ullam occaecati odio est
              possimus vel reprehenderit</p>
            <form 
              onSubmit={buscarCursos} 
              className="form-search d-flex align-items-stretch mb-3"
              role="search"
            >
              <input type="text" className="form-control" placeholder="nombre del curso" name="query" aria-label="buscador de cursos" />
              <button type="submit" className="btn btn-primary">Search</button>
            </form>

            <div className="row gy-4">



            </div>
          </div>

          <div className="col-lg-5 order-1 order-lg-2 hero-img">
            <Image src="/assets/img/hero-img.svg" className="img-fluid mb-3 mb-lg-0" alt="Slider imagen" width={500} height={400} />
          </div>

        </div>
      </div>
    </section>
  )
}