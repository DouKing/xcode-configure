//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

<#@property (nullable, nonatomic, strong) ViewModel *viewModel;#>

@end

/*
@interface ___FILEBASENAMEASIDENTIFIER___ (ViewModel)<#<ViewModelDelegate>#> @end
*/

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - Lifecycle

- (void)dealloc {
    // Clear data and cancle tasks.
    // [self _removeObserVers];
    // [self _removeNotifications];
}

/*
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        <#[self addNotifications];#>
        <#[self addObservers];#>
    }
    return self;
}
*/

- (void)viewDidLoad {
    [super viewDidLoad];
    [self _configCollectionView];
    [self _reloadData];
}

/*
 #pragma mark - Public methods

*/

#pragma mark - UI

- (void)_configCollectionView {
    // [self.collectionView registerClass:UICollectionViewCell.class forCellWithReuseIdentifier:NSStringFromClass(UICollectionViewCell.class)];
}

- (void)_refreshUI {
    // 刷新页面
    [self.collectionView reloadData];
}


 #pragma mark - Actions

- (void)_reloadData {
    <#[self.viewModel reloadData];#>
}

/*
- (void)_addNotifications {
    //[[NSNotificationCenter defaultCenter] addObserver:<#(nonnull id)#> selector:<#(nonnull SEL)#> name:<#(nullable NSNotificationName)#> object:<#(nullable id)#>]
}

- (void)_addObservers {
    //[self.viewModel addObserver:<#(nonnull NSObject *)#> forKeyPath:<#(nonnull NSString *)#> options:<#(NSKeyValueObservingOptions)#> context:<#(nullable void *)#>]
}

- (void)_removeNotifications {
    //[[NSNotificationCenter defaultCenter] removeObserver:<#(nonnull id)#> name:<#(nullable NSNotificationName)#> object:<#(nullable id)#>]
}

- (void)_removeObserVers {
    //[self.viewModel removeObserver:<#(nonnull NSObject *)#> forKeyPath:<#(nonnull NSString *)#>]
}
*/

- (void)<#_openLoginViewController#> {
}

/*
#pragma mark - Callbacks

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {

}

- (void)_handleLoginSuccessNotification:(NSNotification *)note {
}
*/

#pragma mark - setter & getter

/*
- (ViewModel *)viewModel {
    if (!_viewModel) {
        _viewModel = [[ViewModel alloc] init];
        _viewModel.delegate = self;
    }
    return _viewModel;
}
*/

@end

/*
@implementation ___FILEBASENAMEASIDENTIFIER___ (ViewModel)

- (void)viewModelDidSuccess:(ViewModel *)vm {
    [self _refreshUI];
}

- (void)viewModel:(ViewModel *)vm didFailureWithErrorMessage:(NSString *)errorMessage {

}

@end
*/

/*
@implementation ___FILEBASENAMEASIDENTIFIER___ (CollectionView)

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return <#[self.viewModel numberOfItems];#>
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass(UICollectionViewCell.class) forIndexPath:indexPath];
    <#[cell configureItem:[self.viewModel itemAtIndex:indexPath.row]];#>
    return cell;
}

@end
 */
