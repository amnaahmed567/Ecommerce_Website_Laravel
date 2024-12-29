@extends('layouts.checkout')

@section('content')
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="{{ asset('frontend/img/breadcrumb.jpg') }}">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <div class="breadcrumb__text">
              <h2>Checkout</h2>
              <div class="breadcrumb__option">
                <a href="/">Home</a>
                <span>Checkout</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad" style="padding: 50px 0; background-color: #f7f7f7;">
        <div class="container" style="width: 80%; margin: 0 auto;">
            <form action="{{ route('checkout.store') }}" method="POST" style="background: #fff; padding: 30px; border-radius: 8px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
                @csrf
                <div style="margin-bottom: 15px;">
                    <label for="full_name" style="display: block; font-weight: bold; margin-bottom: 5px; color: #333;">Full Name*</label>
                    <input type="text" name="full_name" id="full_name" value="Amna Ahmed" required style="width: 100%; padding: 10px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px; background-color: #fafafa; color: #333;">
                </div>
                <div style="margin-bottom: 15px;">
                    <label for="city" style="display: block; font-weight: bold; margin-bottom: 5px; color: #333;">City*</label>
                    <input type="text" name="city" id="city" required style="width: 100%; padding: 10px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px; background-color: #fafafa; color: #333;">
                </div>
                <div style="margin-bottom: 15px;">
                    <label for="address" style="display: block; font-weight: bold; margin-bottom: 5px; color: #333;">Address*</label>
                    <input type="text" name="address" id="address" placeholder="Street Address" required style="width: 100%; padding: 10px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px; background-color: #fafafa; color: #333;">
                </div>
                <div style="margin-bottom: 15px;">
                    <label for="postcode" style="display: block; font-weight: bold; margin-bottom: 5px; color: #333;">Postcode / ZIP*</label>
                    <input type="text" name="postcode" id="postcode" required style="width: 100%; padding: 10px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px; background-color: #fafafa; color: #333;">
                </div>
                <div style="margin-bottom: 15px;">
                    <label for="phone" style="display: block; font-weight: bold; margin-bottom: 5px; color: #333;">Phone*</label>
                    <input type="text" name="phone" id="phone" required style="width: 100%; padding: 10px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px; background-color: #fafafa; color: #333;">
                </div>
                <div style="margin-bottom: 15px;">
                    <label for="email" style="display: block; font-weight: bold; margin-bottom: 5px; color: #333;">Email*</label>
                    <input type="email" name="email" id="email" value="amnaahmed567@gmail.com" required style="width: 100%; padding: 10px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px; background-color: #fafafa; color: #333;">
                </div>
                <div style="margin-bottom: 15px;">
                    <label for="order_notes" style="display: block; font-weight: bold; margin-bottom: 5px; color: #333;">Order Notes*</label>
                    <textarea name="order_notes" id="order_notes" placeholder="Additional notes" required style="width: 100%; padding: 10px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px; background-color: #fafafa; color: #333;"></textarea>
                </div>
                <div>
                <button type="submit" 
        style="background-color: #5cb85c; color: white; padding: 12px 20px; font-size: 16px; border: none; border-radius: 4px; cursor: pointer; width: 100%; margin-top: 20px; transition: background-color 0.3s ease;" 
        >
    Place Order
</button>

                </div>
            </form>
        </div>
    </section>
    <!-- Checkout Section End -->
    
@endsection
