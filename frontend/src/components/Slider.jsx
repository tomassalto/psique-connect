import { Swiper, SwiperSlide } from "swiper/react";
import { Autoplay } from "swiper/modules";
import "swiper/css/bundle";
import CardOurBlog from "../components/CardOurBlog";
import "./Blog/Blog.css";

const Slider = ({ items, cardWidth }) => {
  return (
    <Swiper
      spaceBetween={30}
      loop={true}
      autoplay={{ delay: 3000, disableOnInteraction: false }}
      modules={[Autoplay]}
      breakpoints={{
        320: {
          slidesPerView: 1,
          spaceBetween: 0,
        },
        640: {
          slidesPerView: 2,
          spaceBetween: 40,
        },
        1024: {
          slidesPerView: 3,
          spaceBetween: 40,
        },
      }}
    >
      {items.map((item, index) => (
        <SwiperSlide key={index}>
          <CardOurBlog
            image={item.image}
            title={item.title}
            description={item.description}
            id={item.id}
            link={false}
            card_width={cardWidth}
          />
        </SwiperSlide>
      ))}
    </Swiper>
  );
};

export default Slider;
