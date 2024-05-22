.class public final Lcom/android/systemui/recents/OverviewProxyService$8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$8;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$8;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 4
    const/high16 v1, 0x10000000

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 9
    const/high16 v1, 0x20000000

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 19
    move-result p0

    .line 22
    invoke-virtual {v0, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 23
    return-void
    .line 26
.end method

.method public final onFinishedWakingUp()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$8;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 4
    const/high16 v1, 0x10000000

    .line 6
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 9
    const/high16 v1, 0x20000000

    .line 12
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 20
    move-result p0

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 24
    return-void
    .line 27
.end method

.method public final onStartedGoingToSleep()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$8;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 4
    const/high16 v1, 0x10000000

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 9
    const/high16 v1, 0x20000000

    .line 12
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 20
    move-result p0

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 24
    return-void
    .line 27
.end method

.method public final onStartedWakingUp()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$8;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 4
    const/high16 v1, 0x10000000

    .line 6
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 9
    const/high16 v1, 0x20000000

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 19
    move-result p0

    .line 22
    invoke-virtual {v0, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 23
    return-void
    .line 26
.end method
