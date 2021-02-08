<a  href="{{ route('logout') }}"
onclick="event.preventDefault();
document.getElementById('logout-form').submit();">
Logout
</a>

<form  action="{{route('logout')}}" method="POST" style="display: none;">
@csrf
</form>