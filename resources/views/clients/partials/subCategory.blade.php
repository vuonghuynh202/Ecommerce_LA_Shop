<ul class="list-group cate-list">
    @foreach ($children as $child)
        <li class="list-group-item">
            <a href="{{ route('product.category', $child->slug) }}">{{ $child->name }}</a>
            @if ($child->children->isNotEmpty())
                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse{{ $child->id }}" aria-expanded="false" aria-controls="collapse{{ $child->id }}">
                    <i class="fas fa-chevron-down"></i>
                </button>
                <div id="collapse{{ $child->id }}" class="collapse" aria-labelledby="heading{{ $child->parent_id }}">
                    @include('clients.partials.subCategory', ['children' => $child->children])
                </div>
            @endif
        </li>
    @endforeach
</ul>