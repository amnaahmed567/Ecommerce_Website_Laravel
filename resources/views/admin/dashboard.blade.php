@if(isset($dashboard))
    <div class="dashboard-content">
        @extends('layouts.admin')
    </div>
@else
    <p>No dashboard found for this user. Please configure your dashboard.</p>
@endif