//___FILEHEADER___

#import "___FILEBASENAME___.h"
<##import "Model.h"#>

@interface ___FILEBASENAMEASIDENTIFIER___ ()

<#@property (nullable, nonatomic, strong) Model *model;#>
<#@property (nullable, nonatomic, strong) NSArray<Item *> *dataSource;#>

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - Lifecycle

- (void)dealloc {
    // Clear data and cancle tasks.
}

#pragma mark - Public methods

- (void)reloadData {
    // Network ...
    // self.model = [Model yy_modelWithJSON:dic];
    // [self _calModel];

    // notify delegate ...
}

#pragma mark - Private methods

- (void)_calModel {
    // calculate model to data source...
}

/*
- (void)_otherMethod {
}
*/

@end

/*
@implementation ___FILEBASENAMEASIDENTIFIER___ (DataSource)

- (NSInteger)numberOfItems {
    //return [self.dataSource count];
}

- (<#Item *#>)itemAtIndex:(NSInteger)index {
    //return [self.dataSource mdf_objectAtIndex:index];
}

@end
*/
