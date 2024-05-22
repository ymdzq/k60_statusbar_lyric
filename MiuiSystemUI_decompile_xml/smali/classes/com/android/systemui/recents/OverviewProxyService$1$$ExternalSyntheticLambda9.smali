.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda9;->f$1:Landroid/view/MotionEvent;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda9;->f$1:Landroid/view/MotionEvent;

    .line 4
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    move-object v1, p1

    .line 17
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 18
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 20
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 26
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 28
    invoke-virtual {v2}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    .line 30
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 37
    const/4 v2, 0x1

    .line 40
    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandLatencyTracking:Z

    .line 41
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 43
    iget-object v1, v1, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;

    .line 47
    invoke-direct {v2, v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
    .line 55
.end method
