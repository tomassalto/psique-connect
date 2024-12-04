const CardOurBlog = ({
  image,
  title,
  description,
  id,
  link,
  card_width,
  url,
}) => {
  console.log(url);
  const card = (
    <div className={`flex flex-col ${card_width} gap-6 h-[430px]`}>
      <img src={image} alt={title} className="h-[211px] object-cover" />
      <div
        className={`flex flex-col ${
          url === "/blog"
            ? "justify-between h-[150px]"
            : "h-[170px] justify-between"
        } `}
      >
        <h3 className="text-2xl leading-normal text-dark font-semibold lg:text-[20px] xl:text-2xl">
          {title}
        </h3>
        <p className="text-base text-[#202020] font-normal leading-normal font-montserrat lg:text-sm xl:text-base">
          {description}
        </p>
      </div>
      <a
        href={`/blog/${id}`}
        className={`${link === true ? "flex cursor-pointer" : "hidden"}`}
      >
        <p className="text-base text-greenPsique leading-normal font-semibold">
          {" "}
          Leer más.
        </p>
      </a>
    </div>
  );
  return link ? card : <a href={`${`/blog/${id}`} `}>{card}</a>;
};

export default CardOurBlog;
