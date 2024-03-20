.class public final Lcom/android/systemui/wallet/ui/WalletScreenController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;
.implements Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# static fields
.field public static final SELECTION_DELAY_MILLIS:J


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

.field public mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mHandler:Landroid/os/Handler;

.field mIsDismissed:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mPrefs:Landroid/content/SharedPreferences;

.field mSelectedCardId:Ljava/lang/String;

.field public final mSelectionRunnable:Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda2;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

.field public final mWalletView:Lcom/android/systemui/wallet/ui/WalletView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    const-wide/16 v1, 0x1e

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->SELECTION_DELAY_MILLIS:J

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallet/ui/WalletView;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda2;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallet/ui/WalletScreenController;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectionRunnable:Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda2;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mContext:Landroid/content/Context;

    .line 12
    iput-object p3, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 14
    iput-object p4, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 16
    iput-object p5, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 18
    iput-object p6, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    .line 20
    iput-object p8, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 22
    iput-object p9, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 24
    iput-object p10, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 26
    iput-object p11, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 28
    check-cast p7, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 30
    invoke-virtual {p7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 32
    move-result-object p1

    .line 35
    const-string p3, "WalletScreenCtrl"

    .line 36
    const/4 p4, 0x0

    .line 38
    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 39
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mPrefs:Landroid/content/SharedPreferences;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    .line 45
    const-string/jumbo p3, "wallet_view_height"

    .line 47
    const/4 p4, -0x1

    .line 50
    invoke-interface {p1, p3, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 51
    move-result p1

    .line 54
    if-ne p1, p4, :cond_0

    .line 55
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object p1

    .line 62
    const p3, 0x7f0707c8    # @dimen/min_wallet_empty_height '208.0dp'

    .line 63
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result p1

    .line 69
    :cond_0
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 70
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    const/4 p3, -0x2

    .line 75
    invoke-direct {p1, p4, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {p2}, Lcom/android/systemui/wallet/ui/WalletView;->getCardCarousel()Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 82
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 86
    if-eqz p1, :cond_1

    .line 88
    iput-object p0, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSelectionListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;

    .line 90
    :cond_1
    return-void
    .line 92
.end method


# virtual methods
.method public final onCardSelected(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectedCardId:Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    move-object v1, p1

    .line 11
    check-cast v1, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->getCardId()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 24
    sget-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_CHANGE_CARD:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    .line 26
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 28
    :cond_1
    check-cast p1, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 31
    invoke-virtual {p1}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->getCardId()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectedCardId:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->selectCard()V

    .line 39
    return-void
    .line 42
.end method

.method public final onKeyguardFadingAwayChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    .line 2
    return-void
    .line 5
.end method

.method public final onUnlockedChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    .line 2
    return-void
    .line 5
.end method

.method public final onWalletCardRetrievalError(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda1;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallet/ui/WalletScreenController;Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final onWalletCardsRetrieved(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string v0, "WalletScreenCtrl"

    .line 7
    const-string v1, "Successfully retrieved wallet cards."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 21
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v2, :cond_2

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Landroid/service/quickaccesswallet/WalletCard;

    .line 33
    invoke-virtual {v2}, Landroid/service/quickaccesswallet/WalletCard;->getCardType()I

    .line 35
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    const/4 v1, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v1, v3

    .line 43
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v0

    .line 52
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v4

    .line 56
    if-eqz v4, :cond_5

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 62
    check-cast v4, Landroid/service/quickaccesswallet/WalletCard;

    .line 63
    if-nez v1, :cond_4

    .line 65
    invoke-virtual {v4}, Landroid/service/quickaccesswallet/WalletCard;->getCardType()I

    .line 67
    move-result v5

    .line 70
    if-ne v5, v3, :cond_3

    .line 71
    :cond_4
    new-instance v5, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    .line 73
    iget-object v6, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {v5, v6, v4}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;-><init>(Landroid/content/Context;Landroid/service/quickaccesswallet/WalletCard;)V

    .line 77
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_1

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v1, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda0;

    .line 86
    invoke-direct {v1, p0, v2, p1}, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletScreenController;Ljava/util/List;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
    .line 94
.end method

.method public final queryWalletCards()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->getCardWidthPx()I

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 13
    invoke-virtual {v1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->getCardHeightPx()I

    .line 15
    move-result v1

    .line 18
    if-eqz v0, :cond_2

    .line 19
    if-nez v1, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    .line 24
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    .line 30
    iget-object v2, v2, Lcom/android/systemui/wallet/ui/WalletView;->mErrorView:Landroid/widget/TextView;

    .line 32
    const/16 v3, 0x8

    .line 34
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v2

    .line 44
    const v3, 0x7f07125b    # @dimen/wallet_screen_header_icon_size '56.0dp'

    .line 45
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    move-result v2

    .line 51
    new-instance v3, Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    .line 52
    const/16 v4, 0xa

    .line 54
    invoke-direct {v3, v0, v1, v2, v4}, Landroid/service/quickaccesswallet/GetWalletCardsRequest;-><init>(IIII)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 59
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 61
    invoke-interface {v0, v1, v3, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    .line 63
    :cond_2
    :goto_0
    return-void
    .line 66
.end method

.method public final selectCard()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectionRunnable:Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda2;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectedCardId:Ljava/lang/String;

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    .line 11
    if-nez v1, :cond_1

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 18
    new-instance v2, Landroid/service/quickaccesswallet/SelectWalletCardRequest;

    .line 20
    invoke-direct {v2, v0}, Landroid/service/quickaccesswallet/SelectWalletCardRequest;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-interface {v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->selectWalletCard(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    .line 25
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectionRunnable:Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda2;

    .line 30
    sget-wide v1, Lcom/android/systemui/wallet/ui/WalletScreenController;->SELECTION_DELAY_MILLIS:J

    .line 32
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    :cond_1
    :goto_0
    return-void
    .line 37
.end method

.method public final showEmptyStateView()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 2
    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getLogo()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 8
    invoke-interface {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getServiceLabel()Ljava/lang/CharSequence;

    .line 10
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 14
    invoke-interface {v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getShortcutLongLabel()Ljava/lang/CharSequence;

    .line 16
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 20
    invoke-interface {v3}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->createWalletIntent()Landroid/content/Intent;

    .line 22
    move-result-object v3

    .line 25
    if-eqz v0, :cond_1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v4

    .line 31
    if-nez v4, :cond_1

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    if-nez v3, :cond_0

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    .line 43
    new-instance v5, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda3;

    .line 45
    invoke-direct {v5, p0, v3}, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallet/ui/WalletScreenController;Landroid/content/Intent;)V

    .line 47
    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/android/systemui/wallet/ui/WalletView;->showEmptyStateView(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda3;)V

    .line 50
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    const-string v0, "WalletScreenCtrl"

    .line 54
    const-string v1, "QuickAccessWalletService manifest entry mis-configured"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    .line 61
    const/16 v1, 0x8

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mPrefs:Landroid/content/SharedPreferences;

    .line 68
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 70
    move-result-object p0

    .line 73
    const-string/jumbo v0, "wallet_view_height"

    .line 74
    const/4 v1, 0x0

    .line 77
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    move-result-object p0

    .line 81
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    :goto_1
    return-void
    .line 85
.end method
