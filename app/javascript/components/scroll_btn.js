const scroll = () => {
  const scrollDown = document.getElementById("list-container");
  scrollDown.scrollIntoView({
    behavior: 'smooth'
  });
};

const scrollListener = () => {
  const clickForScroll = document.getElementById('scroll-btn');
  clickForScroll.addEventListener("click", (e) => {
    e.preventDefault();
    scroll();
  });
};

export { scrollListener };
