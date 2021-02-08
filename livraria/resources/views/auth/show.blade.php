@if(auth()->check())
Id User:{{Auth::user()->id}}<br>
Email User:{{Auth::user()->email}}<br>
Nome User:{{Auth::user()->nome}}<br>
@endif