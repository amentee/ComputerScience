function handler(event) {
    var request = event.request;
    var supportedCountries = ['fr', 'de']; // List of supported countries
    var defaultCountryCode = 'en'; // The default country
    var newURI;
    
    if (request.uri.substr(3, 1) != '/') {
        var headers = request.headers; // Get request headers
        
        if (headers['cloudfront-viewer-country']) {
            var countryCode = headers['cloudfront-viewer-country'].value.toLowerCase(); // Get country code
            
            if (supportedCountries.includes(countryCode))
                newURI = '/' + countryCode + request.uri; // If supported country
            else
                newURI = '/' + defaultCountryCode + request.uri; // Otherwise, default
        }
        
        return {
            statusCode: 302,
            statusDescription: 'Found',
            headers: {
                'location': { 'value': newURI }
            }
        };
    }
    
    return request;
}