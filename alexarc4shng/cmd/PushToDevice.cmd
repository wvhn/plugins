apiurl|https://developer.amazon.com/alexa/console/ask/displays/pushToDevice
description|Pushes APL to Device
json|{"dataSources": {"listTemplate2ListData": {"totalNumberOfItems": 10, "listPage": {"listItems": [{"token": "brie", "image": {"sources": [{"url": "https://thumbs.dreamstime.com/z/ikone-f%C3%BCr-webcam-24501124.jpg", "heightPixels": 0, "size": "small", "widthPixels": 0}, {"url": "https://d2o906d8ln7ui1.cloudfront.net/images/md_brie.png", "heightPixels": 0, "size": "large", "widthPixels": 0}], "smallSourceUrl": null, "contentDescription": null, "largeSourceUrl": null}, "ordinalNumber": 1, "textContent": {"primaryText": {"text": "Gartenkamera", "type": "PlainText"}, "secondaryText": {"text": "RTSP", "type": "PlainText"}}, "listItemIdentifier": "brie"}, {"token": "gruyere", "image": {"sources": [{"url": "https://d2o906d8ln7ui1.cloudfront.net/images/md_gruyere.png", "heightPixels": 0, "size": "small", "widthPixels": 0}, {"url": "https://d2o906d8ln7ui1.cloudfront.net/images/md_gruyere.png", "heightPixels": 0, "size": "large", "widthPixels": 0}], "smallSourceUrl": null, "contentDescription": null, "largeSourceUrl": null}, "ordinalNumber": 2, "textContent": {"primaryText": {"text": "Gruyere", "type": "PlainText"}, "secondaryText": {"text": "Origin: Switzerland", "type": "RichText"}}, "listItemIdentifier": "gruyere"}, {"token": "gorgonzola", "image": {"sources": [{"url": "https://d2o906d8ln7ui1.cloudfront.net/images/md_gorgonzola.png", "heightPixels": 0, "size": "small", "widthPixels": 0}, {"url": "https://d2o906d8ln7ui1.cloudfront.net/images/md_gorgonzola.png", "heightPixels": 0, "size": "large", "widthPixels": 0}], "smallSourceUrl": null, "contentDescription": null, "largeSourceUrl": null}, "ordinalNumber": 3, "textContent": {"primaryText": {"text": "Gorgonzola", "type": "PlainText"}, "secondaryText": {"text": "Origin: Italy", "type": "RichText"}}, "listItemIdentifier": "gorgonzola"}]}, "hintText": "Try, \"Alexa, select number 1\"", "type": "list", "listId": "lt2Sample"}, "listTemplate2Metadata": {"title": "Live Streamer for RTSP via VLC", "logoUrl": "https://d2o906d8ln7ui1.cloudfront.net/images/cheeseskillicon.png", "objectId": "lt1Metadata", "type": "object", "backgroundImage": {"sources": [{"url": "https://d2o906d8ln7ui1.cloudfront.net/images/LT2_Background.png", "heightPixels": 0, "size": "small", "widthPixels": 0}, {"url": "https://d2o906d8ln7ui1.cloudfront.net/images/LT2_Background.png", "heightPixels": 0, "size": "large", "widthPixels": 0}], "smallSourceUrl": null, "contentDescription": null, "largeSourceUrl": null}}}, "template": {"onMount": [], "settings": {}, "import": [{"version": "1.1.0", "name": "alexa-layouts"}], "graphics": {}, "mainTemplate": {"JSON_PATH": "/mainTemplate", "item": [{"hintText": "${payload.listTemplate2Metadata.hintText}", "listData": "${payload.listTemplate2ListData.listPage.listItems}", "title": "${payload.listTemplate2Metadata.title}", "logo": "${payload.listTemplate2Metadata.logoUrl}", "JSON_PATH": "/mainTemplate/item/0", "type": "ListTemplate2", "backgroundImage": "${payload.listTemplate2Metadata.backgroundImage.sources[0].url}"}], "parameters": ["payload"]}, "version": "1.1", "theme": "dark", "layouts": {"ListTemplate2": {"JSON_PATH": "/layouts/ListTemplate2", "items": [{"height": "100%", "type": "Container", "JSON_PATH": "/layouts/ListTemplate2/items/0", "when": "${viewport.shape == 'round'}", "items": [{"scrollDirection": "horizontal", "data": "${listData}", "height": "100%", "item": [{"JSON_PATH": "/layouts/ListTemplate2/items/0/items/0/item/0", "listLength": "${payload.listTemplate2ListData.listPage.listItems.length}", "type": "FullHorizontalListItem"}], "numbered": true, "JSON_PATH": "/layouts/ListTemplate2/items/0/items/0", "type": "Sequence", "width": "100%"}], "width": "100%"}, {"JSON_PATH": "/layouts/ListTemplate2/items/1", "height": "100vh", "items": [{"scale": "best-fill", "height": "100vh", "position": "absolute", "JSON_PATH": "/layouts/ListTemplate2/items/1/items/0", "source": "${backgroundImage}", "type": "Image", "width": "100vw"}, {"headerTitle": "${title}", "headerAttributionImage": "${logo}", "JSON_PATH": "/layouts/ListTemplate2/items/1/items/1", "type": "AlexaHeader"}, {"scrollDirection": "horizontal", "data": "${listData}", "paddingRight": "@marginRight", "item": [{"JSON_PATH": "/layouts/ListTemplate2/items/1/items/2/item/0", "type": "HorizontalListItem"}], "numbered": true, "height": "70vh", "JSON_PATH": "/layouts/ListTemplate2/items/1/items/2", "paddingLeft": "@marginLeft", "type": "Sequence", "width": "100%"}, {"top": "85vh", "JSON_PATH": "/layouts/ListTemplate2/items/1/items/3", "footerHint": "${payload.listTemplate2ListData.hintText}", "position": "absolute", "type": "AlexaFooter"}], "type": "Container", "width": "100vw"}], "parameters": ["backgroundImage", "title", "logo", "hintText", "listData"]}, "FullHorizontalListItem": {"JSON_PATH": "/layouts/FullHorizontalListItem", "item": [{"height": "100vh", "items": [{"scale": "best-fill", "height": "100vh", "overlayColor": "rgba(0, 0, 0, 0.6)", "position": "absolute", "JSON_PATH": "/layouts/FullHorizontalListItem/item/0/items/0", "source": "${data.image.sources[0].url}", "type": "Image", "width": "100vw"}, {"headerTitle": "${title}", "headerAttributionImage": "${logo}", "JSON_PATH": "/layouts/FullHorizontalListItem/item/0/items/1", "type": "AlexaHeader", "grow": 1}, {"text": "${data.textContent.primaryText.text}", "JSON_PATH": "/layouts/FullHorizontalListItem/item/0/items/2", "style": "textStyleBody", "type": "Text", "maxLines": 1}, {"text": "${data.textContent.secondaryText.text}", "JSON_PATH": "/layouts/FullHorizontalListItem/item/0/items/3", "style": "textStyleDetails", "type": "Text"}, {"color": "white", "text": "${ordinal} | ${listLength}", "paddingBottom": "20dp", "JSON_PATH": "/layouts/FullHorizontalListItem/item/0/items/4", "spacing": "5dp", "type": "Text"}], "alignItems": "center", "justifyContent": "end", "JSON_PATH": "/layouts/FullHorizontalListItem/item/0", "type": "Container", "width": "100vw"}], "parameters": ["listLength"]}, "HorizontalListItem": {"JSON_PATH": "/layouts/HorizontalListItem", "item": [{"paddingRight": 16, "items": [{"height": "40vh", "JSON_PATH": "/layouts/HorizontalListItem/item/0/items/0", "source": "${data.image.sources[0].url}", "type": "Image", "width": "40vh"}, {"text": "<b>${ordinal}.</b> ${data.textContent.primaryText.text}", "type": "Text", "JSON_PATH": "/layouts/HorizontalListItem/item/0/items/1", "spacing": 12, "style": "textStyleSecondary", "maxLines": 1}, {"text": "${data.textContent.secondaryText.text}", "JSON_PATH": "/layouts/HorizontalListItem/item/0/items/2", "style": "textStyleDetails", "type": "Text", "spacing": 4}], "minWidth": 312, "maxWidth": 528, "JSON_PATH": "/layouts/HorizontalListItem/item/0", "paddingLeft": 16, "height": "100%", "type": "Container"}]}}, "styles": {"textStylePrimary": {"extend": ["textStyleBase1", "mixinPrimary"]}, "mixinPrimary": {"values": {"fontSize": "@textSizePrimary"}}, "textStyleBase0": {"values": {"fontWeight": "100"}, "description": "Thin version of basic font", "extend": "textStyleBase"}, "textStyleBase": {"values": [{"color": "@colorTextPrimary"}], "description": "Base font description; set color"}, "textStyleBody": {"extend": ["textStyleBase1", "mixinBody"]}, "textStyleBase1": {"values": {"fontWeight": "300"}, "description": "Light version of basic font", "extend": "textStyleBase"}, "textStyleDetails": {"extend": ["textStyleBase2", "mixinDetails"]}, "mixinBody": {"values": {"fontSize": "@textSizeBody"}}, "mixinDetails": {"values": {"fontSize": "@textSizeDetails"}}, "textStyleSecondaryHint": {"values": {"fontStyle": "italic", "color": "@colorTextPrimary", "fontSize": "@textSizeSecondaryHint", "fontFamily": "Bookerly"}}, "mixinSecondary": {"values": {"fontSize": "@textSizeSecondary"}}, "textStyleSecondary": {"extend": ["textStyleBase0", "mixinSecondary"]}, "textStyleBase2": {"values": {"fontWeight": "500"}, "description": "Regular version of basic font", "extend": "textStyleBase"}}, "resources": [{"colors": {"colorTextPrimary": "#151920"}, "description": "Stock color for the light theme"}, {"when": "${viewport.theme == 'dark'}", "description": "Stock color for the dark theme", "colors": {"colorTextPrimary": "#f0f1ef"}}, {"dimensions": {"textSizeBody": 48, "textSizeSecondary": 23, "textSizeDetails": 20, "textSizeSecondaryHint": 25, "textSizePrimary": 27}, "description": "Standard font sizes"}, {"dimensions": {"spacingMedium": 24, "spacingThin": 6, "spacingSmall": 12, "spacingLarge": 48, "spacingExtraLarge": 72}, "description": "Common spacing values"}, {"dimensions": {"marginTop": 40, "marginBottom": 40, "marginRight": 60, "marginLeft": 60}, "description": "Common margins and padding"}], "type": "APL", "commands": {}}, "deviceAccountInfo": {"deviceAccountName": "fireTv Kueche", "deviceTypeName": "Amazon Fire TV stick (3rd Gen)", "deviceSerialNumber": "G070VM09851205CH", "deviceType": "AKPGW064GI9HE"}}