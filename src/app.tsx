import EDTextImg from "/text.svg";
import computerImg from "/computer.png";

export default function App() {
  return (
    <div className="w-screen h-screen">
      <div className="w-full h-full bg-gradient-to-r from-cyan-500 to-blue-500 bg-gradient-180 relative flex justify-center items-center px-4 py-2">
        <div className="min-w-full min-h-[350px] flex justify-center items-end relative">
          <div className="absolute top-0 ml-10">
            <img src={EDTextImg} />
          </div>
          <div className="absolute top-[90px] px-[90px]">
            <img src={computerImg} />
          </div>
          {/* <div className="absolute top-0"></div>
          <div className="absolute top-0"></div> */}
          <div className="bg-white text-blue font-bold py-2 px-4 rounded-full cursor-pointer">
            Get Stared
          </div>
        </div>
      </div>
    </div>
  );
}
