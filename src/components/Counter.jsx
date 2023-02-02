import { useState } from "react";

const Counter = () => {
  const [count, countSet] = useState(0);
  return (
    <button
      onClick={() => countSet((prev) => prev + 1)}
      className="bg-gray-200 px-3 py-1 rounded"
    >
      Count ({count})
    </button>
  );
};

export default Counter;
