//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

<#@property (nullable, nonatomic, strong) ViewModel *viewModel;#>
<#@property (nullable, nonatomic, strong) UITableView *tableView;#>

@end

/*
@interface ___FILEBASENAMEASIDENTIFIER___ (ViewModel)<#<ViewModelDelegate>#> @end
@interface ___FILEBASENAMEASIDENTIFIER___ (TableView)<#<UITableViewDataSource, UITableViewDelegate>#> @end
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
    [self _setupSubviews];
    [self _reloadData];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self _layout];
}

/*
 #pragma mark - Public methods

*/

#pragma mark - UI

- (void)_setupSubviews {
    // 添加子视图.
    <#[self.view addSubview:self.tableView];#>
}

- (void)_layout {
    // 设置子视图 frame
    <#self.tableView.frame = self.view.bounds;#>
}

- (void)_refreshUI {
    // 刷新页面
    <#[self.tableView reloadData];#>
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

/*
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = ({
            UITableView *tv = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
            tv.backgroundColor = [UIColor lightTextColor];
            tv.delegate = self;
            tv.dataSource = self;
            [tv registerClass:[TableViewCell class]
       forCellReuseIdentifier:NSStringFromClass([TableViewCell class])];
            tv;
        });
    }
    return _tableView;
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
@implementation ___FILEBASENAMEASIDENTIFIER___ (TableView)

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return <#[self.viewModel numberOfItems];#>
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#NSStringFromClass(TableViewCell.class)#> forIndexPath:indexPath];
    <#[cell configureItem:[self.viewModel itemAtIndex:indexPath.row]];#>
    return cell;
}

@end
 */
