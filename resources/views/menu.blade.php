<ul class="navbar-nav">
    @foreach($items as $menu_item)
        <li class="nav-item">
            <a class="nav-link {{url($menu_item->link()) == url()->current() ? 'active' : ''}}" href="{{ url($menu_item->link()) }}">{{ $menu_item->title }}</a>
        </li>
    @endforeach
</ul>