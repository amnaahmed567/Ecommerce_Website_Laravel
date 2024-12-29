<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class DashboardController extends Controller
{
    /**
     * Display the admin dashboard.
     */
    public function index()
    {
        $dashboard = Auth::user()->dashboard;

        // Redirect with an error message if no dashboard is found
        if (!$dashboard) {
            return view('admin.dashboard')->withErrors('No dashboard found for this user.');
        }

        // Pass the dashboard to the view
        return view('admin.dashboard', compact('dashboard'));
    }

    /**
     * Update the admin's dashboard configuration.
     */
    public function update(Request $request)
    {
        // Retrieve the user's dashboard
        $dashboard = Auth::user()->dashboard;

        // Validate incoming data (ensure 'config' is valid JSON)
        $data = $request->validate([
            'config' => 'required|json',
        ]);

        try {
            if ($dashboard) {
                // Update existing dashboard config
                $dashboard->update(['config' => $data['config']]);

                // Clear cached data if any
                Session::forget('dashboard');
            } else {
                // Create a new dashboard for the user
                Auth::user()->dashboard()->create(['config' => $data['config']]);
            }

            // Redirect with a success message
            return redirect()
                ->route('admin.dashboard')
                ->with('success', 'Dashboard updated successfully!');
        } catch (\Exception $e) {
            // Log the error for debugging
            \Log::error('Dashboard update error: ' . $e->getMessage());

            // Redirect back with an error message
            return redirect()
                ->route('admin.dashboard')
                ->withErrors('Failed to update the dashboard. Please try again.');
}
}
}