const Button = ({ text, color, disabled, type = "button", onClick }) => {
  return (
    <button
      type={type}
      disabled={disabled}
      onClick={onClick ? onClick : undefined}
      className={`${
        disabled
          ? "!bg-[#C1C1C1] cursor-not-allowed text-white"
          : color === "primary"
          ? "bg-[#75B781] text-white"
          : color === "third"
          ? "bg-white border-[2px] border-[#75B781] text-[#75B781] font-bold"
          : "bg-[#2A352F] text-white"
      } px-5 py-3 w-full h-full font-Muli rounded flex items-center text-[16px] justify-center sm:px-10`}
    >
      {text}
    </button>
  );
};

export default Button;
