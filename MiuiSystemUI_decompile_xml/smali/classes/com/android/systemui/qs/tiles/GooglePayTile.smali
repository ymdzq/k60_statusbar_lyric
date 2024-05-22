.class public final Lcom/android/systemui/qs/tiles/GooglePayTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mGoogleController:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

.field public final mWalletController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/controlcenter/policy/GoogleTilesController;Lcom/android/systemui/wallet/controller/QuickAccessWalletController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/GooglePayTile;->mGoogleController:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 5
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/GooglePayTile;->mWalletController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/GooglePayTile;->mGoogleController:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->getGPayClickIntent()Landroid/content/Intent;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309b5    # @string/quick_settings_googlepay_label 'Google Pay'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/GooglePayTile;->mGoogleController:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->getGPayClickIntent()Landroid/content/Intent;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 5
    const/4 p2, 0x1

    .line 7
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 8
    const p2, 0x7f081155    # @drawable/ic_qs_googlepay 'res/drawable/ic_qs_googlepay.xml'

    .line 10
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 13
    move-result-object p2

    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 17
    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 22
    const v1, 0x7f1309b5    # @string/quick_settings_googlepay_label 'Google Pay'

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/GooglePayTile;->mWalletController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    .line 30
    iget-object v2, v2, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 32
    if-eqz v2, :cond_0

    .line 34
    invoke-interface {v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getTileIcon()Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    new-instance p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    .line 42
    invoke-interface {v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getTileIcon()Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object v3

    .line 47
    invoke-direct {p2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :cond_0
    if-eqz v2, :cond_1

    .line 51
    invoke-interface {v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getServiceLabel()Ljava/lang/CharSequence;

    .line 53
    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    invoke-interface {v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getShortcutShortLabel()Ljava/lang/CharSequence;

    .line 59
    move-result-object v0

    .line 62
    :cond_1
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 63
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 65
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 73
    const-class p0, Landroid/widget/Switch;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 81
    return-void
    .line 83
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/GooglePayTile;->mGoogleController:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->gPayAvailable:Z

    .line 4
    return p0
    .line 6
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method
