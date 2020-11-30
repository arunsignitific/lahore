
                    
                    @php
                    if(!empty($product_list)){
                        $product_list;
                    }
                    else {
                        $product_list = [];
                    }
                    @endphp
                    @foreach ($product_list as $item)
                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product-default mb-4">
                            <figure>
                                <a href="{{ route('productView', ['id'=>$item['id']]) }}">
                                    @if ($item['thumb_img'] == null)
                                        <img src="{{ URL::asset('public/frontend/assets/images/images.jpeg') }}">
                                    @else
                                        <?php $thumbImg = explode(',',$item['thumb_img']); ?>
                                        @for($i=0; $i<count($thumbImg); $i++)
                                            @if ($i == 0)
                                                <img src="{{ asset('storage/app/watch_thumb/'.$thumbImg[0]) }}">
                                            @endif
                                        @endfor
                                    @endif
                                </a>
                            </figure>
                            <div class="product-details">
                                <h2 class="product-title">
                                    <a href="{{ route('productView', ['id'=>$item['id']]) }}">{{ $item['model_no'] }}</a>
                                </h2>
                                <div class="price-box">
                                </div><!-- End .price-box -->
                                
                            </div><!-- End .product-details -->
                        </div>
                    </div><!-- End .col-md-4 -->
                    @endforeach
                    @if (count($product_list)>0)
                        
                    {{ $product_list->links() }}
                    @endif