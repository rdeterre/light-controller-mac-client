//
//  LightController.m
//  Popup
//
//  Created by Romain Deterre on 2013-06-05.
//
//

#import "LightController.h"

#include <curl/curl.h>

@implementation LightController

- (IBAction)lightChanged:(id)sender {
    
    CURL *curl;
    curl_global_init(CURL_GLOBAL_ALL);
    curl = curl_easy_init();
    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1);
    curl_easy_setopt(curl, CURLOPT_URL, "192.168.1.210/form");
    curl_easy_setopt(curl, CURLOPT_POST, 1);
    char buffer [50];
    sprintf(buffer, "l0=%d&l1=%d&l2=%d", [sender intValue],
            [sender intValue],
            [sender intValue]);
    curl_easy_setopt(curl, CURLOPT_POSTFIELDS, buffer);
    curl_easy_perform(curl);
    curl_easy_cleanup(curl);
}
@end
