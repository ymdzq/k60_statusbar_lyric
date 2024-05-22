.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(ZZZZZZZ)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p6, 0x1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    if-nez p2, :cond_0

    .line 11
    move v1, p6

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v0

    .line 15
    :goto_0
    const/16 v2, 0x40

    .line 16
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 18
    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 20
    if-eqz p1, :cond_1

    .line 23
    if-eqz p2, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    move p6, v0

    .line 28
    :goto_1
    const/16 p1, 0x200

    .line 29
    invoke-virtual {v3, p1, p6}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 31
    const/high16 p1, -0x80000000

    .line 34
    invoke-virtual {v3, p1, p3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 36
    const/16 p1, 0x8

    .line 39
    invoke-virtual {v3, p1, p4}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 41
    const/high16 p1, 0x200000

    .line 44
    invoke-virtual {v3, p1, p5}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 46
    const/high16 p1, 0x8000000

    .line 49
    invoke-virtual {v3, p1, p7}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 51
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 56
    move-result p0

    .line 59
    invoke-virtual {v3, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 60
    return-void
    .line 63
.end method
