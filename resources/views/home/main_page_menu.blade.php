<ul>
    @foreach($items as $menu_item)
        <li>
            <a class="" href="{{ url($menu_item->link()) }}">{{ $menu_item->title }}</a>
        </li>
    @endforeach
</ul>