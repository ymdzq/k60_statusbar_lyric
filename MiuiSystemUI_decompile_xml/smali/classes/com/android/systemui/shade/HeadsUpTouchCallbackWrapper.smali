.class public final Lcom/android/systemui/shade/HeadsUpTouchCallbackWrapper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;


# instance fields
.field public final base:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

.field public final headsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public final panelView:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/HeadsUpTouchCallbackWrapper;->panelView:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/shade/HeadsUpTouchCallbackWrapper;->headsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/shade/HeadsUpTouchCallbackWrapper;->base:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/HeadsUpTouchCallbackWrapper;->base:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/HeadsUpTouchCallbackWrapper;->base:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final isExpanded()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/HeadsUpTouchCallbackWrapper;->headsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/systemui/shade/HeadsUpTouchCallbackWrapper;->panelView:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 10
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/HeadsUpTouchCallbackWrapper;->base:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 19
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->isExpanded()Z

    .line 21
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    if-nez v0, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_1
    return v1
    .line 31
.end method
