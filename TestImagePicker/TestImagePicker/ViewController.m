//
//  ViewController.m
//  TestImagePicker
//
//  Created by zhangqi on 24/7/2017.
//  Copyright © 2017 zhangqi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (nonatomic,strong)UIImagePickerController *imagePickerVC;
@end

@implementation ViewController

- (UIImagePickerController *)imagePickerVC
{
    if (!_imagePickerVC) {
        _imagePickerVC = [[UIImagePickerController alloc] init];
        if (_imagePickerVC.mediaTypes.count < 2) {
            _imagePickerVC.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            _imagePickerVC.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:_imagePickerVC.sourceType];
        }
         [_imagePickerVC setSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
        _imagePickerVC.allowsEditing = YES;
        _imagePickerVC.delegate = self;
    }
    return _imagePickerVC;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   }

- (IBAction)onclickShowPhotos:(id)sender {
    [self presentViewController:self.imagePickerVC animated:YES completion:^{
        
    }];

}


#pragma mark --UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(nullable NSDictionary<NSString *,id> *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0)
{
    NSLog(@"%s",__func__);
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    NSLog(@"%s",__func__);
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    NSLog(@"%s",__func__);
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
