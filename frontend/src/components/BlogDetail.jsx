import React from "react";
import ourBlogData from "../data/our_blog.json";
import featuredCardData from "../data/featured_card.json";
import Slider from "./Slider";

const BlogDetail = ({ id }) => {
  const blogId = parseInt(id, 10);

  let blogPost = ourBlogData.our_blog.find((post) => post.id === blogId);

  if (!blogPost) {
    blogPost = featuredCardData.featured_card;
  }

  const duplicatedItems = [...ourBlogData.our_blog, ...ourBlogData.our_blog];

  return (
    <div className="flex items-center justify-center">
      <div className="flex flex-col justify-center w-[311px] sm:w-[577px] lg:w-[824px] xl:w-[980px] mac:w-[1040px] hd:w-[1036px] fullhd:w-[1120px]">
        <div className="flex flex-col gap-y-[40px] pt-10 pb-[157px]">
          <a href="/blog">
            <div className="flex items-center gap-[11px]">
              <img
                src="/icons/blog/chevron.svg"
                alt="chevron"
                className="size-[18px]"
              />
              <p className="text-[18px] font-semibold leading-6 tracking-[1.15px] text-violet">
                Volver al blog
              </p>
            </div>
          </a>
          <div className="flex flex-col gap-y-[15px]">
            <h1 className="text-[#3A3A3A] text-[36px] font-semibold leading-normal">
              {blogPost.title}
            </h1>
            <p className="text-[#3A3A3A] font-light text-[16px] leading-normal">
              {blogPost.date}
            </p>
          </div>
          <div>
            <img
              src={blogPost.image}
              alt={blogPost.title}
              className="w-[311px] h-[450px] object-cover sm:w-full"
            />
          </div>
          <div className="flex flex-col gap-y-[40px]">
            {blogPost.description_full.split("\n\n").map((paragraph, index) => (
              <p
                key={index}
                className="text-[#3A3A3A] text-[16px] leading-[22px]"
              >
                {paragraph}
              </p>
            ))}
          </div>
          <p className="text-[18px] font-semibold leading-6 tracking-[1.15px] text-violet">
            Otros blogs
          </p>
          <div className="">
            <Slider
              items={duplicatedItems}
              cardWidth="w-[300px] sm:w-[280px] lg:w-[248px] xl:w-[300px] mac:w-[333px] fullhd:w-[346px]"
            ></Slider>
          </div>
        </div>
      </div>
    </div>
  );
};

export default BlogDetail;
