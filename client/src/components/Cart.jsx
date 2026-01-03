// src/components/Cart.jsx
import React from "react";

function Cart({ cartItems, onClose }) {
  const total = cartItems.reduce(
    (sum, item) => sum + (item.total_price || 0),
    0
  );
  

  return (
    <div className="fixed inset-0 bg-black bg-opacity-50 flex justify-center items-center z-20">
      <div className="bg-white p-6 rounded-lg w-96 max-h-96 overflow-y-auto">
        <h2 className="text-xl font-bold mb-4">Shopping Cart</h2>

        {cartItems.length === 0 ? (
          <p>Cart is empty.</p>
        ) : (
          <ul className="space-y-3">
            {cartItems.map((item, index) => (
              <li key={index} className="flex items-center justify-between">
                <div className="flex items-center space-x-3">
                  {item.image && (
                    <img
                      src={item.image}
                      alt={item.title}
                      className="w-10 h-10 object-cover rounded"
                    />
                  )}
                  <div>
                    <div className="font-semibold text-sm">{item.title}</div>
                    <div className="text-xs text-gray-600">
                      Qty: {item.quantity} × ${item.unit_price}
                    </div>
                  </div>
                </div>
                <span className="text-sm font-bold">
                  ${item.total_price.toFixed(2)}
                </span>
              </li>
            ))}
          </ul>
        )}

        <p className="font-bold mt-4">Total: ${total.toFixed(2)}</p>

        <div className="mt-4 space-x-2">
          <button
            onClick={() => alert("Checkout simulated!")}
            className="bg-blue-600 text-white px-4 py-2 rounded"
          >
            Checkout
          </button>
          <button
            onClick={onClose}
            className="bg-gray-600 text-white px-4 py-2 rounded"
          >
            Close
          </button>
        </div>
      </div>
    </div>
  );
}

export default Cart;
