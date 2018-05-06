//
//  ViewController.h
//  SensoroTheatre
//
//  Created by Lucia Rodinò on 27/04/18.
//  Copyright © 2018 Lucia Rodinò. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBKBeacon.h"
#import "SBKBeaconManager.h"
#import "SBKBeaconManager+Cloud.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *EmptyBG;
@property (weak, nonatomic) IBOutlet UILabel *StartLabel;
//@property (nonatomic, retain) IBOutlet UIImageView *imageToDisplay;
@property (weak, nonatomic) IBOutlet UILabel *NoBeaconLabel;

@end

