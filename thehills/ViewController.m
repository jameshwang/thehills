//
//  ViewController.m
//  thehills
//
//  Created by James on 6/16/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController ()

@end

@implementation ViewController
{
    GMSMapView *mapView_;
}

- (void)loadView {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:40.742
                                                            longitude:-74.174
                                                                 zoom:12
                                                              bearing:30
                                                         viewingAngle:45];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
//
//    // Creates a marker in the center of the map.
//    GMSMarker *marker = [[GMSMarker alloc] init];
//    marker.position = CLLocationCoordinate2DMake(37.7913145, -122.3929252);
//    marker.title = @"New Relic";
//    marker.snippet = @"New Relic";
//    marker.map = mapView_;
    
    CLLocationCoordinate2D newark = CLLocationCoordinate2DMake(40.742, -74.174);
    // Image from http://www.lib.utexas.edu/maps/historical/newark_nj_1922.jpg
    UIImage *icon = [UIImage imageNamed:@"newark_nj_1922.jpg"];
    GMSGroundOverlay *overlay = [GMSGroundOverlay groundOverlayWithPosition:newark icon:icon];
    overlay.bearing = 0;
    overlay.zoomLevel = 13.6;
    overlay.map = mapView_;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
