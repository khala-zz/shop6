<div id="rev_slider_1077_1_wrapper" class="rev_slider_wrapper fullscreen-container" data-alias="scroll-effect136" data-source="gallery" style="padding:0px;">
    <!-- START REVOLUTION SLIDER 5.4.1 fullscreen mode -->
    <div id="rev_slider_1077_1" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.4.1">
        
        <ul>
            
            <!-- SLIDE  3-->
            @foreach($sliders as $index => $slider)
            <li data-index="rs-{{$index}}" data-transition="slideoverhorizontal" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="1000" data-thumb=""  data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off"  data-title="Big &amp; Bold" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                <!-- MAIN IMAGE -->
                <img src="{{asset('uploads/sliders/'.$slider -> image_name)}}"  alt="{{$slider -> name}}"  data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                <!-- LAYERS -->
                @if($index == 1)
                <div class="container" style="position: relative;">

                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption BigBold-SubTitle  " 
                    id="slide-3043-layer-2" 
                    data-x="['left','left','left','left']" data-hoffset="['603','480','300','20']"
                    data-y="['top','top','top','top']" data-voffset="['150','90','60','40']" 
                    data-fontsize="['18','18','18','14']"
                    data-width="['580','580','100%','100%']"
                    data-height="none"
                    data-whitespace="normal"
              
                    data-type="text" 
                    data-basealign="slide" 
                    data-responsive_offset="off" 
                    data-responsive="off"
                    data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;",
                    "speed":1500,"to":"o:1;","delay":650,"ease":"Power3.easeInOut"},
                    {"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"Power2.easeInOut"}]'
                    data-textAlign="['left','left','left','left']"
                    data-paddingtop="[0,0,0,0]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[0,0,0,0]"
              
                    style="z-index: {{$index + 11}};  white-space: normal;  line-height: 1.5;">{{$slider -> name}}</div>

                    

            
                    <!-- LAYER NR. 2 -->

                    <div class="tp-caption BigBold-Title   tp-resizeme" 
                      id="slide-3043-layer-b" 
                      data-x="['left','left','left','left']" data-hoffset="['602','480','300','20']"
                      data-y="['top','top','top','top']" data-voffset="['170','120','90','70']" 
                      data-fontsize="['50','40','30','24']"
                      data-lineheight="['70','50','40','30']"
                      data-width="['580','580','100%','100%']"
                      data-height="none"
                      data-whitespace="['nowrap','nowrap','nowrap','normal']"
                
                      data-type="text" 
                      data-basealign="slide" 
                      data-responsive_offset="off" 
                
                      data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;",
                      "mask":"x:0px;y:[-100%];s:inherit;e:inherit;","speed":1500,"to":"o:1;",
                      "delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[-100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                      data-textAlign="['left','left','left','left']"
                      data-paddingtop="[0,0,0,0]"
                      data-paddingright="[0,0,0,0]"
                      data-paddingbottom="[0,0,0,0]"
                      data-paddingleft="[0,0,0,0]"
                
                      style="z-index: {{$index + 10}}; white-space: nowrap; color:#212121; ">{!!$slider -> nametwo!!}</div>
                
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption BigBold-Button rev-btn " 
                    id="slide-3043-layer-3" 
                    data-x="['left','left','left','left']" data-hoffset="['602','480','300','20']"
                    data-y="['top','top','top','top']" data-voffset="['330','250','200','150']" 
                    
                    data-height="none"
                    data-whitespace="nowrap"
              
                    data-type="button" 
                    data-actions='[{"event":"click","action":"simplelink","target": "_self","url":"cua-hang"}]'
                    data-basealign="slide" 
                    data-responsive_offset="off" 
                    data-responsive="off"
                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;",
                    "speed":1500,"to":"o:1;","delay":650,"ease":"Power3.easeInOut"},
                    {"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"Power2.easeInOut"},
                    {"frame":"hover","speed":"300","ease":"Power1.easeInOut",
                    "to":"o:1;rX:0;rY:0;rZ:0;z:0;",
                    "style":"c:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);bw:1px 1px 1px 1px;"}]'
                    data-textAlign="['center','center','center','center']"
                    data-paddingtop="[13,13,13,13]"
                    data-paddingright="[25,25,25,25]"
                    data-paddingbottom="[13,13,13,13]"
                    data-paddingleft="[25,25,25,25]"
              
                    style="z-index: {{$index + 12}}; text-transform: uppercase; white-space: nowrap;outline:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer; border-radius: 3px;">Mua Sắm</div>

                </div>
                @elseif($index == 2)
                <div class="container" style="position: relative;">

                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption BigBold-SubTitle  " 
                    id="slide-3043-layer-8" 
                    data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                    data-y="['top','top','top','top']" data-voffset="['150','90','60','40']" 
                    data-fontsize="['18','18','18','14']"
                    data-width="['100%','100%','100%','100%']"
                    data-height="none"
                    data-whitespace="normal"
              
                    data-type="text" 
                    data-basealign="slide" 
                    data-responsive_offset="off" 
                    data-responsive="off"
                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;",
                    "speed":1500,"to":"o:1;","delay":650,"ease":"Power3.easeInOut"},
                    {"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"Power2.easeInOut"}]'
                    data-textAlign="['center','center','center','center']"
                    data-paddingtop="[0,0,0,0]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[0,0,0,0]"
              
                    style="z-index: {{$index + 10}};  white-space: normal; line-height: 1.5;">{{$slider -> name}}</div>

            
                    <!-- LAYER NR. 2 -->

                    <div class="tp-caption BigBold-Title   tp-resizeme" 
                      id="slide-3043-layer-a" 
                      data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                      data-y="['top','top','top','top']" data-voffset="['170','120','90','70']" 
                      data-fontsize="['50','40','30','24']"
                      data-lineheight="['70','50','40','30']"
                      data-width="['100%','100%','100%','100%']"
                      data-height="none"
                      data-whitespace="['nowrap','nowrap','nowrap','normal']"
                
                      data-type="text" 
                      data-basealign="slide" 
                      data-responsive_offset="off" 
                
                      data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;",
                      "mask":"x:0px;y:[-100%];s:inherit;e:inherit;","speed":1500,"to":"o:1;",
                      "delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[-100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                      data-textAlign="['center','center','center','center']"
                      data-paddingtop="[0,0,0,0]"
                      data-paddingright="[0,0,0,0]"
                      data-paddingbottom="[0,0,0,0]"
                      data-paddingleft="[0,0,0,0]"
                
                      style="z-index: {{$index + 9}}; white-space: nowrap; color:#000; ">{!!$slider -> nametwo!!}
                    </div>
        
          
        
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption BigBold-Button rev-btn " 
                    id="slide-3043-layer-7" 
                    data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']"
                    data-y="['top','top','top','top']" data-voffset="['330','250','200','150']" 
                    
                    data-height="none"
                    data-whitespace="nowrap"
              
                    data-type="button" 
                    data-actions='[{"event":"click","action":"simplelink","target": "_self","url":"cua-hang"}]'
                    data-basealign="slide" 
                    data-responsive_offset="off" 
                    data-responsive="off"
                    data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;",
                    "speed":1500,"to":"o:1;","delay":650,"ease":"Power3.easeInOut"},
                    {"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"Power2.easeInOut"},
                    {"frame":"hover","speed":"300","ease":"Power1.easeInOut",
                    "to":"o:1;rX:0;rY:0;rZ:0;z:0;",
                    "style":"c:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);bw:1px 1px 1px 1px;"}]'
                    data-textAlign="['center','center','center','center']"
                    data-paddingtop="[13,13,13,13]"
                    data-paddingright="[25,25,25,25]"
                    data-paddingbottom="[13,13,13,13]"
                    data-paddingleft="[25,25,25,25]"
              
                    style="z-index: {{$index + 11}}; text-transform: uppercase; white-space: nowrap;outline:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer; border-radius: 3px;">Mua sắm
                    </div>

                </div>
                @else
                  <div class="container" style="position: relative;">

                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption BigBold-SubTitle  " 
                    id="slide-3043-layer-c" 
                    data-x="['left','left','left','left']" data-hoffset="['15','15','15','15']"
                    data-y="['top','top','top','top']" data-voffset="['150','90','60','40']" 
                    data-fontsize="['18','18','18','14']"
                    data-width="['100%','100%','100%','100%']"
                    data-height="none"
                    data-whitespace="normal"
              
                    data-type="text" 
                    data-basealign="slide" 
                    data-responsive_offset="off" 
                    data-responsive="off"
                    data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;",
                    "speed":1500,"to":"o:1;","delay":650,"ease":"Power3.easeInOut"},
                    {"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"Power2.easeInOut"}]'
                    data-textAlign="['left','left','left','left']"
                    data-paddingtop="[0,0,0,0]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[0,0,0,0]"
              
                    style="z-index: {{$index + 12}};  white-space: normal; line-height: 1.5;">{{$slider -> name}}</div>

            
                    <!-- LAYER NR. 2 -->

                    <div class="tp-caption BigBold-Title   tp-resizeme" 
                      id="slide-3043-layer-1" 
                      data-x="['left','left','left','left']" data-hoffset="['15','15','15','15']"
                      data-y="['top','top','top','top']" data-voffset="['170','120','90','70']" 
                      data-fontsize="['50','40','30','24']"
                      data-lineheight="['70','50','40','30']"
                      data-width="['100%','100%','100%','100%']"
                      data-height="none"
                      data-whitespace="['nowrap','nowrap','nowrap','normal']"
                
                      data-type="text" 
                      data-basealign="slide" 
                      data-responsive_offset="off" 
                
                      data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;",
                      "mask":"x:0px;y:[-100%];s:inherit;e:inherit;","speed":1500,"to":"o:1;",
                      "delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[-100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
                      data-textAlign="['left','left','left','left']"
                      data-paddingtop="[0,0,0,0]"
                      data-paddingright="[0,0,0,0]"
                      data-paddingbottom="[0,0,0,0]"
                      data-paddingleft="[0,0,0,0]"
                
                      style="z-index: {{$index + 11}}; white-space: nowrap; color:#212121; ">{!!$slider -> nametwo!!}</div>
        
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption BigBold-Button rev-btn " 
                    id="slide-3043-layer-9" 
                    data-x="['left','left','left','left']" data-hoffset="['15','15','15','15']"
                    data-y="['top','top','top','top']" data-voffset="['330','250','200','150']" 
                    
                    data-height="none"
                    data-whitespace="nowrap"
              
                    data-type="button" 
                    data-actions='[{"event":"click","action":"simplelink","target": "_self","url":"cua-hang"}]'
                    data-basealign="slide" 
                    data-responsive_offset="off" 
                    data-responsive="off"
                    data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;",
                    "speed":1500,"to":"o:1;","delay":650,"ease":"Power3.easeInOut"},
                    {"delay":"wait","speed":1000,"to":"y:50px;opacity:0;","ease":"Power2.easeInOut"},
                    {"frame":"hover","speed":"300","ease":"Power1.easeInOut",
                    "to":"o:1;rX:0;rY:0;rZ:0;z:0;",
                    "style":"c:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);bw:1px 1px 1px 1px;"}]'
                    data-textAlign="['center','center','center','center']"
                    data-paddingtop="[13,13,13,13]"
                    data-paddingright="[25,25,25,25]"
                    data-paddingbottom="[13,13,13,13]"
                    data-paddingleft="[25,25,25,25]"
              
                    style="z-index: {{$index + 13}}; text-transform: uppercase; white-space: nowrap;outline:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer; border-radius: 3px;">Mua sắm</div>

                </div>
                @endif
            </li>
            @endforeach       
              
        </ul>
        <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>   
    </div>
</div>