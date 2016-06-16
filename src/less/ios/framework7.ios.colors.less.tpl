@import url('_mixins.less');
@import url('_colors-vars.less');
/*==========================
Framework7 Color Themes
==========================*/
.theme-mixin(@colorName, @color, @colorHex) {
    //Plain color and links
    .color-@{colorName} {
        color: @color;
        .list-block .item-link.list-button&, .tabbar a.active&, a& {
            color: @color;
        }
        .label-switch input[type="checkbox"]:checked + .checkbox&, .label-switch& input[type="checkbox"]:checked + .checkbox{
            background-color: @color;
        }
    }
    //Buttons
    .color-@{colorName}.button:not(.button-fill), .color-@{colorName}.buttons-row .button, .theme-@{colorName} .button:not(.button-fill) {
        border-color: @color;
        html:not(.watch-active-state) &:active, &.active-state {
            background-color: rgba(red(@color), green(@color), blue(@color), 0.15);
        }
        &.active {
            background-color: @color;
            color:#fff;
        }
    }
    .theme-@{colorName} .button.button-fill, .button.button-fill.color-@{colorName} {
        background: @color;
        color:#fff;
    }
    // Progress bar
    .progressbar {
        &.color-@{colorName}, &.theme-@{colorName}, .theme-@{colorName} &, &.bg-@{colorName} {
            span {
                background-color: @color;
            }
        }
    }
    .progressbar-infinite {
        &.color-@{colorName}, &.theme-@{colorName}, .theme-@{colorName} &, &.bg-@{colorName} {
            &:before {
                background-color: @color;
            }
        }
    }
    //Icons
    .color-@{colorName}, .theme-@{colorName} {
        i.icon, i.icon& {
            color:@color;
        }
    }
    i.icon-next.color-@{colorName}, i.icon-next.theme-@{colorName}, .theme-@{colorName} i.icon-next {
        .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 15 15'><g><path fill='#@{colorHex}' d='M1,1.6l11.8,5.8L1,13.4V1.6 M0,0v15l15-7.6L0,0L0,0z'/></g></svg>");
    }
    i.icon-prev.color-@{colorName}, i.icon-prev.theme-@{colorName}, .theme-@{colorName} i.icon-prev {
        .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 15 15'><g><path fill='#@{colorHex}' d='M14,1.6v11.8L2.2,7.6L14,1.6 M15,0L0,7.6L15,15V0L15,0z'/></g></svg>");
    }
    i.icon-back.color-@{colorName}, i.icon-back.theme-@{colorName}, .theme-@{colorName} i.icon-back {
        .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 12 20'><path d='M10,0l2,2l-8,8l8,8l-2,2L0,10L10,0z' fill='#ffffff'/></svg>");
    }
    i.icon-forward.color-@{colorName}, i.icon-forward.theme-@{colorName}, .theme-@{colorName} i.icon-forward {
        .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 12 20'><path d='M2,20l-2-2l8-8L0,2l2-2l10,10L2,20z' fill='#@{colorHex}'/></svg>");
    }
    i.icon-bars.color-@{colorName}, i.icon-bars.theme-@{colorName}, .theme-@{colorName} i.icon-bars {
        .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 21 14'><path fill='#@{colorHex}' d='M0,0h2v2H0V0z M4,0h17v1H4V0z M0,6h2v2H0V6z M4,6h17v1H4V6z M0,12h2v2H0V12z M4,12h17v1H4V12z'/></svg>");
        @media (-webkit-min-device-pixel-ratio: 2) {
            .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 42 26'><path fill='#@{colorHex}' d='M0,0h4v4H0V0z M8,1h34v2H8V1z M0,11h4v4H0V11z M8,12h34v2H8V12z M0,22h4v4H0V22z M8,23h34v2H8V23z'/></svg>");
        }
    }
    // Theme
    .theme-@{colorName} {
        a, .item-link.list-button {
            color: @color;
        }
        .tabbar, .tabbar& {
            a, a i {
                color:inherit;
            }
            a.active, a.active i {
                color:@color;
            }
        }
        .range-slider, .range-slider& {
            input[type="range"]::-webkit-slider-thumb:before {
                background-color: @color;
            }
            input[type="range"]::-ms-fill-lower {
                background-color: @color;
            }
        }
        label.label-checkbox input[type="checkbox"]:checked + .item-media i.icon-form-checkbox, label.label-checkbox input[type="radio"]:checked + .item-media i.icon-form-checkbox {
            background-color: @color;
        }
        label.label-radio input[type="checkbox"]:checked ~ .item-inner, label.label-radio input[type="radio"]:checked ~ .item-inner {
            .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 13 10'><polygon fill='#@{colorHex}' points='11.6,0 4.4,7.2 1.4,4.2 0,5.6 4.4,10 4.4,10 4.4,10 13,1.4 '/></svg>");
        }
        .picker-calendar-day.picker-calendar-day-selected span {
            background-color: @color !important;
        }
    }
    .swiper-pagination {
        &.color-@{colorName}, .theme-@{colorName} & {
            .swiper-pagination-bullet-active {
                background-color: @color;
            }
            .swiper-pagination-progressbar {
                background-color: @color;
            }
        }
        &.swiper-pagination-progress.bg-@{colorName} {
            background-color: rgba(red(@color), green(@color), blue(@color), 0.25);
        }
    }
    .swiper-button-next, .swiper-container-rtl .swiper-button-prev {
        &.color-@{colorName}, .theme-@{colorName} & {
            .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'><path d='M27,22L27,22L5,44l-2.1-2.1L22.8,22L2.9,2.1L5,0L27,22L27,22z' fill='#@{colorHex}'/></svg>");
        }
    }
    .swiper-button-prev, .swiper-container-rtl .swiper-button-next {
        &.color-@{colorName}, .theme-@{colorName} & {
            .encoded-svg-background("<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'><path d='M0,22L22,0l2.1,2.1L4.2,22l19.9,19.9L22,44L0,22L0,22L0,22z' fill='#@{colorHex}'/></svg>");
        }
    }
    // Bg rule
    .bg-@{colorName}, .button.button-fill.bg-@{colorName}, a.bg-@{colorName}, .list-block .swipeout-actions-left a.bg-@{colorName}, .list-block .swipeout-actions-right a.bg-@{colorName} {
        background-color: @color;
    }
    // Border rule
    .border-@{colorName} {
        border-color: @color;
        .list-block &.item-inner, .list-block ul&, & {
            &:after, &:before {
                background-color: @color;
            }
        }
    }
    //Badges
    .badge.color-@{colorName}, .badge.theme-@{colorName} {
        background-color:@color;
        color: #fff;
    }
}
.theme-mixin(e('lrcustom'), @lrcustom, {{- THEME_PRESS_COLOR }});
.theme-mixin(e('gray'), #8e8e93, '8e8e93');
.theme-mixin(e('white'), #ffffff, 'ffffff');
.theme-mixin(e('black'), #000000, '000000');
.theme-mixin(e('lightblue'), #5ac8fa, '5ac8fa');
.theme-mixin(e('yellow'), #ffcc00, 'ffcc00');
.theme-mixin(e('orange'), #ff9500, 'ff9500');
.theme-mixin(e('pink'), #ff2d55, 'ff2d55');
.theme-mixin(e('blue'), #007aff, '007aff');
.theme-mixin(e('green'), #4cd964, '4cd964');
.theme-mixin(e('red'), #ff3b30, 'ff3b30');

/*==========================
Framework7 Layouts Themes
==========================*/
/* === Dark layout === */
.layout-dark {
    @pageBg: #222426;
    @barsBg: #131313;
    @barsBorder: #333;
    @barsText: #fff;
    @tabBarText: #fff;
    @text: #ddd;
    @lightText: #bbb;
    @strongText: #fff;
    @activeLink: #29292f;
    @blockBg: #1c1d1f;
    @blockBorder: #393939;
    @blockStrongBg: #1c1d1f;
    @dividerBg: #1a1a1a;
    @itemAfterText: @lightText;
    @searchbarBg: #333;
    @searchbarBorder: #333;
    @swipeoutButton: #444;
    @checkboxBorder: @blockBorder;
    .navbar, .navbar&, .subnavbar, .subnavbar& {
        .hairline-color(bottom, @barsBorder);
        background-color: @barsBg;
        color:@barsText;
    }
    .toolbar, .toolbar& {
        .hairline-color(top, @barsBorder);
        background-color: @barsBg;
        color:@barsText;
    }
    // Picker
    .picker-modal {
        .toolbar {
            background-color: @barsBg;
        }
    }
    .popover .picker-modal .toolbar {
        background: none;
    }
    .picker-calendar-week-days {
        color:#fff;
        background-color: @barsBg;
    }
    .popover .picker-modal, .picker-modal.picker-modal-inline {
        .picker-center-highlight {
            .hairline-color(top, @barsBorder);
            .hairline-color(bottom, @barsBorder);
        }
        .picker-item.picker-selected {
            color:#fff;
        }
        .picker-calendar-week-days {
            color: #fff;
        }
        .picker-calendar-day {
            color:#fff;
            &.picker-calendar-day-prev, &.picker-calendar-day-next {
                color: #777;
            }
            &.picker-calendar-day-disabled {
                color: #555;
            }
            &.picker-calendar-day-today span {
                background: #333;
            }
            &.picker-calendar-day-has-events span:after {
                background: #555;
            }
        }
        .picker-calendar-week-days, .picker-calendar-row {
            .hairline-color(bottom, @barsBorder);
        }
        .toolbar ~ .picker-modal-inner .picker-calendar-months,  .picker-calendar-week-days ~ .picker-calendar-months {
            .hairline-color(top, @barsBorder);
        }

    }
    .popover .picker-modal {
        .toolbar {
            .hairline-color(bottom, @barsBorder);
        }
    }
    // Photo Browser
    .photo-browser, .views .view[data-page="photo-browser-slides"] {
        .navbar, .toolbar {
            color:#000;
            background: rgba(247,247,247,0.95);
        }
    }
    .photo-browser-dark {
        .navbar, .toolbar {
            background: rgba(30,30,30,0.8);
            color:#fff;
        }
    }

    .tabbar a:not(.active) {
        color:@tabBarText;
    }
    .page, .login-screen-content, .page&, .panel, .panel& {
        background-color: @pageBg;
        color:@text;
    }
    .content-block-title {
        color:@strongText;
    }
    .content-block, .content-block& {
        color:@lightText;
    }
    .content-block-inner {
        background: @blockStrongBg;
        color:@text;
        .hairline-color(top, @blockBorder);
        .hairline-color(bottom, @blockBorder);
    }
    .list-block, .list-block& {
        ul {
            background: @blockBg;
            .hairline-color(top, @blockBorder);
            .hairline-color(bottom, @blockBorder);
        }
        &.inset ul{
            background: @blockStrongBg;
        }
        &.notifications > ul {
            background: none;
        }
    }
    .autocomplete-dropdown  {
        background: @blockBg;
        .list-block b {
            color: #fff;
        }
    }
    .card {
        background: @blockBg;
    }
    .card-header{
        .hairline-color(bottom, @blockBorder);
    }
    .card-footer {
        .hairline-color(top, @blockBorder);
        color:@lightText;
    }
    .popover, .popover& {
        background: rgba(0,0,0,0.8);
        .popover-angle:after {
            background: rgba(0,0,0,0.8);
        }
        .list-block ul {
            background: none;
        }

    }
    .actions-popover .list-block ul {
        .hairline-color(top, @blockBorder);
        .hairline-color(bottom, @blockBorder);
    }
    .actions-popover .actions-popover-label {
        .hairline-color(bottom, @blockBorder);
    }
    li.sorting {
        background-color: @activeLink;
    }
    .swipeout-actions-left a, .swipeout-actions-right a {
        background-color: @swipeoutButton;
    }
    .item-inner, .list-block ul ul li:last-child .item-inner {
        .hairline-color(bottom, @blockBorder);
    }
    .item-after {
        color:@itemAfterText;
    }
    .item-link, label.label-checkbox, label.label-radio {
        html:not(.watch-active-state) &:active, &.active-state {
            background-color: @activeLink;
        }
    }
    .item-link.list-button {
        .hairline-color(bottom, @blockBorder);
    }
    .list-block-label {
        color:@lightText;
    }
    .item-divider, .list-group-title {
        background: @dividerBg;
        color:@lightText;
        .hairline-color(top, @blockBorder);
    }

    // Searchbar
    .searchbar {
        background: @searchbarBg;
        .hairline-color(bottom, @searchbarBorder);
    }

    // Forms
    .list-block, .list-block& {
        input[type="text"], input[type="password"], input[type="email"], input[type="tel"], input[type="url"], input[type="date"], input[type="datetime-local"], input[type="number"], select, textarea {
            color:@strongText;
        }
    }
    .label-switch .checkbox {
        background-color: @checkboxBorder;
        &:before {
            background-color: @blockBg;
        }
    }
    .range-slider input[type="range"]:after {
        background: @blockBg;
    }
    .range-slider input[type="range"]::-ms-thumb {
        border: none;
    }
}

/* === White layout === */
.layout-white {
    @pageBg: #fff;
    @barsBg: #fff;
    @barsBorder: #ddd;
    @barsText: #000;
    @tabBarText: #777;
    @text: #000;
    @lightText: #777;
    @strongText: #777;
    @activeLink: #eee;
    @blockBg: @pageBg;
    @blockBorder: #ddd;
    @blockStrongBg: #fafafa;
    @dividerBg: #f7f7f7;
    @itemAfterText: #8e8e93;
    @searchbarBg: #c9c9ce;
    @searchbarBorder: #b4b4b4;
    @swipeoutButton: #c7c7cc;
    @checkboxBorder: #e5e5e5;
    .navbar, .navbar&, .subnavbar, .subnavbar& {
        .hairline-color(bottom, @barsBorder);
        background-color: @barsBg;
        color:@barsText;
    }
    .toolbar, .toolbar& {
        .hairline-color(top, @barsBorder);
        background-color: @barsBg;
        color:@barsText;
    }

    // Picker
    .picker-modal {
        .toolbar {
            background-color: @barsBg;
        }
    }
    .popover .picker-modal .toolbar {
        background: none;
    }
    .popover .picker-modal, .picker-modal.picker-modal-inline {
        .picker-center-highlight {
            .hairline-color(top, @barsBorder);
            .hairline-color(bottom, @barsBorder);
        }
        .picker-calendar-week-days, .picker-calendar-row {
            .hairline-color(bottom, @barsBorder);
        }
        .toolbar ~ .picker-modal-inner .picker-calendar-months,  .picker-calendar-week-days ~ .picker-calendar-months {
            .hairline-color(top, @barsBorder);
        }
    }
    .popover .picker-modal {
        .toolbar {
            .hairline-color(bottom, @barsBorder);
        }
    }
    // Photo Browser
    .photo-browser, .views .view[data-page="photo-browser-slides"] {
        .navbar, .toolbar {
            color:#000;
            background: rgba(247,247,247,0.95);
        }
    }
    .photo-browser-dark {
        .navbar, .toolbar {
            background: rgba(30,30,30,0.8);
            color:#fff;
        }
    }
    .tabbar a:not(.active) {
        color:@tabBarText;
    }
    .page, .login-screen-content, .page&, .panel, .panel& {
        background-color: @pageBg;
        color: @text;
    }
    .content-block-title {
        color:@strongText;
    }
    .content-block, .content-block& {
        color:@lightText;
    }
    .content-block-inner {
        background: @blockStrongBg;
        color:@text;
        .hairline-color(bottom, @blockBorder);
        .hairline-color(top, @blockBorder);
    }
    .list-block, .list-block& {
        ul {
            background: @blockBg;
            .hairline-color(bottom, @blockBorder);
            .hairline-color(top, @blockBorder);
        }
        &.inset ul{
            background: @blockStrongBg;
        }
        &.notifications > ul {
            background: none;
        }
    }
    .popover-inner > .list-block ul {
        background: none;
    }
    li.sorting {
        background-color: @activeLink;
    }
    .swipeout-actions-left a, .swipeout-actions-right a {
        background-color: @swipeoutButton;
    }
    .item-inner, .list-block ul ul li:last-child .item-inner {
        border-color: @blockBorder;
        .hairline-color(bottom, @blockBorder);
    }
    .item-after {
        color:@itemAfterText;
    }
    .item-link, label.label-checkbox, label.label-radio {
        html:not(.watch-active-state) &:active, &.active-state {
            background-color: @activeLink;
        }
    }
    .item-link.list-button {
        .hairline-color(bottom, @blockBorder);
    }
    .list-block-label {
        color:@lightText;
    }
    .item-divider, .list-group-title {
        background: @dividerBg;
        color:@lightText;
        .hairline-color(top, @blockBorder);
    }

    // Searchbar
    .searchbar {
        background: @searchbarBg;
        .hairline-color(bottom, @searchbarBorder);
    }

    // Forms
    .list-block, .list-block& {
        input[type="text"], input[type="password"], input[type="email"], input[type="tel"], input[type="url"], input[type="date"], input[type="datetime-local"], input[type="number"], select, textarea {
            color:@strongText;
        }
    }
    .label-switch .checkbox {
        background-color: @checkboxBorder;
        &:before {
            background-color: @blockBg;
        }
    }
    .range-slider input[type="range"]:after {
        background: @blockBg;
    }
}