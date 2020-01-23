const colorSelectors = [
    'div.section-title',
    'div.card-title',
    'h2#membership-tiers',
    'h2#contact-form-to-become-a-new-member',
    'h1#mc-statutes'
]

const colorRotation = [
    // MC logo colors
    '#eeba2d',
    '#049689',
    '#3e77ce',
    '#d51b37',
    '#f95a32',
    '#a2aa47'
]

var nextColorIndex = -1;

$(document).ready(function() {
    nextColorIndex = -1;
    for (var c = 0; c < colorSelectors.length; c++) {
        var targetSelector = colorSelectors[c];
        colorElement(targetSelector);
    }
});

function colorElement(targetSelector) {
    $(targetSelector).each(function(index, selectedElement) {
        $(selectedElement).css({
            'margin-bottom': '20px',
            'border-left': '5px solid ' + nextElementColor(),
            'padding-left': '5px'
        });
    });
}

function nextElementColor() {
    if (colorRotation.length === 0)
        return undefined;
    else if (++nextColorIndex >= colorRotation.length)
        nextColorIndex = 0;

    return colorRotation[nextColorIndex];
}
