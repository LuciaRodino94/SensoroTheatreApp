//
//  ViewController.m
//  SensoroTheatre
//
//  Created by Lucia Rodinò on 27/04/18.
//  Copyright © 2018 Lucia Rodinò. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <SBKBeaconManagerDelegate> {
    NSArray *_UUIDs;
    NSMutableArray *_beacons;
    
}

@end

static NSString *CellIdentifier = @"SBKDBeaconCell";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.EmptyBG setImage:[UIImage imageNamed: @"homepage"]];
    [_StartLabel setHidden:NO];
    [_NoBeaconLabel setHidden:YES];
    [SBKBeaconManager sharedInstance].delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* New device found */
- (void)beaconManager:(SBKBeaconManager *)beaconManager didRangeNewBeacon:(SBKBeacon *)beacon{
    if([beacon.serialNumber  isEqual: @"0117C59B4EC7"]){
        //UIImage *image = [UIImage imageNamed: @"piantina"];
        //[self.view addSubview:(image)];
        [self.EmptyBG setImage:[UIImage imageNamed: @"Romeo&Juliet"]];
        [_StartLabel setHidden:YES];
        [_NoBeaconLabel setHidden:YES];
    }
    
    if ([beacon.serialNumber isEqual: @"0117C5578442"]){
        [self.EmptyBG setImage:[UIImage imageNamed: @"sconto"]];
        [_StartLabel setHidden:YES];
        [_NoBeaconLabel setHidden:YES];
    }
    
    if([beacon.serialNumber isEqual: @"0117C582CAD7"]){
        [self.EmptyBG setImage:[UIImage imageNamed: @"Piantina"]];
        [_StartLabel setHidden:YES];
        [_NoBeaconLabel setHidden:YES];
    }
}

/* Device is out of range */
- (void)beaconManager:(SBKBeaconManager *)beaconManager beaconDidGone:(SBKBeacon *)beacon{
    [self.EmptyBG setImage:[UIImage imageNamed: @"homepage"]];
    [_StartLabel setHidden:NO];
    [_NoBeaconLabel setHidden:NO];
}

@end
