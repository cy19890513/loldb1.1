/*
     File: DetailViewController.m
 Abstract: The secondary detailed view controller for this app.
 
  Version: 1.0
 
 Disclaimer: IMPORTANT:  This Apple software is supplied to you by Apple
 Inc. ("Apple") in consideration of your agreement to the following
 terms, and your use, installation, modification or redistribution of
 this Apple software constitutes acceptance of these terms.  If you do
 not agree with these terms, please do not use, install, modify or
 redistribute this Apple software.
 
 In consideration of your agreement to abide by the following terms, and
 subject to these terms, Apple grants you a personal, non-exclusive
 license, under Apple's copyrights in this original Apple software (the
 "Apple Software"), to use, reproduce, modify and redistribute the Apple
 Software, with or without modifications, in source and/or binary forms;
 provided that if you redistribute the Apple Software in its entirety and
 without modifications, you must retain this notice and the following
 text and disclaimers in all such redistributions of the Apple Software.
 Neither the name, trademarks, service marks or logos of Apple Inc. may
 be used to endorse or promote products derived from the Apple Software
 without specific prior written permission from Apple.  Except as
 expressly stated in this notice, no other rights or licenses, express or
 implied, are granted by Apple herein, including but not limited to any
 patent rights that may be infringed by your derivative works or by other
 works in which the Apple Software may be incorporated.
 
 The Apple Software is provided by Apple on an "AS IS" basis.  APPLE
 MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION
 THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS
 FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND
 OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.
 
 IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL
 OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION,
 MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED
 AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE),
 STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE
 POSSIBILITY OF SUCH DAMAGE.
 
 Copyright (C) 2012 Apple Inc. All Rights Reserved.
 
 */

#import "DetailViewController.h"
#import "Cell2.h"
#import "Cell3.h"
#import "Champion.h"
@interface DetailViewController ()
@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
//@property (weak, nonatomic) IBOutlet UICollectionView *badAgainstCollectionView;
//@property (strong, nonatomic) IBOutlet Cell *myCollectionViewCell;


@end
NSMutableArray *badAgainstChampions;
NSMutableArray *goodAgainstChampions;
NSMutableArray *tempArray;
@implementation DetailViewController
@synthesize championsArray,image,name,goodAgainstCV,badAgainstCV;


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //load label text string to self property string
    self.imageView.image = self.image;
    self.label.text = (NSString *)self.name;
    self.title = self.name;
    [self setNeedsStatusBarAppearanceUpdate];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
    
    
    [self viewDidLoad ];
    
}


-(void)viewDidLoad{
    
    [tempArray removeAllObjects];
    tempArray = [NSMutableArray arrayWithArray:[championsArray filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF.championName == %@",name]]];
    Champion *temp = tempArray[0];
    //NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF.championName contains[c] %@",searchText];
    badAgainstChampions = [[NSMutableArray alloc] init];
	goodAgainstChampions = [[NSMutableArray alloc] init];
    //initialize two array
    if(temp != nil)
    {
        [badAgainstChampions addObject:temp.badAgainstChampion1];[badAgainstChampions addObject:temp.badAgainstChampion2];
        [badAgainstChampions addObject:temp.badAgainstChampion3];[badAgainstChampions addObject:temp.badAgainstChampion4];
        [badAgainstChampions addObject:temp.badAgainstChampion5];[badAgainstChampions addObject:temp.badAgainstChampion6];
        [goodAgainstChampions addObject:temp.goodAgainstChampion1];[goodAgainstChampions addObject:temp.goodAgainstChampion2];
        [goodAgainstChampions addObject:temp.goodAgainstChampion3];[goodAgainstChampions addObject:temp.goodAgainstChampion4];
        [goodAgainstChampions addObject:temp.goodAgainstChampion5];[goodAgainstChampions addObject:temp.goodAgainstChampion6];
    }
    else
    {
        [badAgainstChampions addObject:@"Annie"];
        [badAgainstChampions addObject:@"Braum"];
        [badAgainstChampions addObject:@"Fiddlesticks"];
        [badAgainstChampions addObject:@"Gangplank"];
        [badAgainstChampions addObject:@"Gargas"];
        [badAgainstChampions addObject:@"Heimerdinger"];
        
        
        
        [goodAgainstChampions addObject:@"Nidalee"];
        [goodAgainstChampions addObject:@"Xin Zhao"];
        [goodAgainstChampions addObject:@"Heimerdinger"];
        [goodAgainstChampions addObject:@"Nasus"];
        [goodAgainstChampions addObject:@"Udyr"];
    }
    
    
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{
    //check which collection view it is
    if(view==self.badAgainstCV)
		return [badAgainstChampions count];
    else
        return [goodAgainstChampions count];
    return 1;
}


//TODO: do something like this for goodAgainstChampion
- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    
    //UICollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"cell2" forIndexPath:indexPath];
    
    // we're going to use a custom UICollectionViewCell, which will hold an image and its label
    //
    if(cv==self.badAgainstCV)
    {
    
    Cell2 *cell = [cv dequeueReusableCellWithReuseIdentifier:@"cell2" forIndexPath:indexPath];
    
    // make the cell's title the actual NSIndexPath value
    //cell.label.text = [NSString stringWithFormat:@"{%ld,%ld}", (long)indexPath.row, (long)indexPath.section];
    cell.label.text = [badAgainstChampions objectAtIndex:indexPath.row];
    
    // load the image for this cell
    //NSString *imageToLoad = [NSString stringWithFormat:@"%d.JPG", indexPath.row];
    NSString *imageToLoad = [NSString stringWithFormat:@"%@.jpg", cell.label.text];
    cell.image.image = [UIImage imageNamed:imageToLoad];
    
    return cell;
    }
    
    if(cv==self.goodAgainstCV)
    {
        
        Cell3 *cell = [cv dequeueReusableCellWithReuseIdentifier:@"cell3" forIndexPath:indexPath];
        
        // make the cell's title the actual NSIndexPath value
        //cell.label.text = [NSString stringWithFormat:@"{%ld,%ld}", (long)indexPath.row, (long)indexPath.section];
        cell.label.text = [goodAgainstChampions objectAtIndex:indexPath.row];
        
        // load the image for this cell
        //NSString *imageToLoad = [NSString stringWithFormat:@"%d.JPG", indexPath.row];
        NSString *imageToLoad = [NSString stringWithFormat:@"%@.jpg", cell.label.text];
        cell.image.image = [UIImage imageNamed:imageToLoad];
        
        return cell;
    }
    //return cell;
    return NULL;
}


// the user tapped a collection item, load and set the image on the detail view controller
//

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //UICollectionView *myCollectionView = (UICollectionView *)[segue viewWithTag:102];
    
    //load different detailviewcontroller based on different segue 
    
    if ([[segue identifier] isEqualToString:@"showDetail2"])
    {
        UICollectionView *myCollectionView = (UICollectionView *)[self.view viewWithTag:103];
        NSIndexPath *selectedIndexPath = [[myCollectionView indexPathsForSelectedItems] objectAtIndex:0];
        
        // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
        NSString *imageNameToLoad = [NSString stringWithFormat:@"%@", [badAgainstChampions objectAtIndex:selectedIndexPath.row]];
        NSString *pathToImage = [[NSBundle mainBundle] pathForResource:imageNameToLoad ofType:@"jpg"];
        UIImage *image = [[UIImage alloc] initWithContentsOfFile:pathToImage];
        
        DetailViewController *detailViewController = [segue destinationViewController];
        detailViewController.image = image;
        detailViewController.name=[badAgainstChampions objectAtIndex:selectedIndexPath.row];
        detailViewController.championsArray = championsArray;
    }
    
    
    if ([[segue identifier] isEqualToString:@"showDetail3"])
    {
        UICollectionView *myCollectionView = (UICollectionView *)[self.view viewWithTag:104];
        NSIndexPath *selectedIndexPath = [[myCollectionView indexPathsForSelectedItems] objectAtIndex:0];
        
        // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
        NSString *imageNameToLoad = [NSString stringWithFormat:@"%@", [goodAgainstChampions objectAtIndex:selectedIndexPath.row]];
        NSString *pathToImage = [[NSBundle mainBundle] pathForResource:imageNameToLoad ofType:@"jpg"];
        UIImage *image = [[UIImage alloc] initWithContentsOfFile:pathToImage];
        
        DetailViewController *detailViewController = [segue destinationViewController];
        detailViewController.image = image;
        detailViewController.name=[goodAgainstChampions objectAtIndex:selectedIndexPath.row];
        detailViewController.championsArray = championsArray;

    }

    
}

//DeSelect Cell
- (void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
}



@end
