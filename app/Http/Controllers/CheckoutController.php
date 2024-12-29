<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Order;

class CheckoutController extends Controller
{
    /**
     * Show the checkout form.
     */
    public function index()
    {
        return view('frontend.order.checkout');
    }

    /**
     * Handle the checkout form submission.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        // Validate the request
        $validated = $request->validate([
            'full_name' => 'required|string|max:255',
            'city' => 'required|string|max:255',
            'address' => 'required|string|max:255',
            'postcode' => 'required|string|max:10',
            'phone' => 'required|string|max:15',
            'email' => 'required|email',
            'order_notes' => 'nullable|string',
        ]);

        // Create a new order
        $order = new Order();
        $order->user_id = Auth::id(); // Associate the order with the logged-in user
        $order->customer_first_name = $validated['full_name'];
        $order->customer_address = $validated['address'];
        $order->customer_postcode = $validated['postcode'];
        $order->customer_phone = $validated['phone'];
        $order->customer_email = $validated['email'];
        $order->notes = $validated['order_notes'];
        $order->save();

        // Redirect back with a success message
        return redirect()->route('homepage')->with([
            'message' => 'Order placed successfully!',
            'type' => 'success'
        ]);
        
       
}
}