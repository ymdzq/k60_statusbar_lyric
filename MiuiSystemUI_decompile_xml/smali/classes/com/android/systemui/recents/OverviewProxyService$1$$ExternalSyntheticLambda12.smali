.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:Landroid/view/MotionEvent;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/phone/CentralSurfaces;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$1:Landroid/view/MotionEvent;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$2:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$1:Landroid/view/MotionEvent;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;->f$2:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    move-result v2

    .line 14
    const-class v3, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 15
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 21
    iget-object v4, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 23
    iget-object v4, v4, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    move-result-object v4

    .line 34
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    int-to-float v4, v4

    .line 37
    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->dispatchToControlPanel(Landroid/view/MotionEvent;F)Z

    .line 38
    move-result v3

    .line 41
    const/4 v4, 0x1

    .line 42
    const/4 v5, 0x0

    .line 43
    if-eqz v3, :cond_0

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    const-string v6, "handle MotionEvent by Control Panel:"

    .line 48
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 53
    move-result v6

    .line 56
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 63
    const-string v6, "OverviewProxyService"

    .line 64
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    move v3, v4

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v3, v5

    .line 71
    :goto_0
    if-nez v3, :cond_4

    .line 72
    if-nez v2, :cond_1

    .line 74
    iget-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 76
    iput-boolean v4, v3, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 78
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 80
    move-result v6

    .line 83
    iput v6, v3, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    .line 84
    iget-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 86
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 88
    move-result-wide v6

    .line 91
    iput-wide v6, v3, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    .line 92
    iget-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 94
    iget-boolean v3, v3, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 96
    const/4 v6, 0x0

    .line 98
    move-object v7, p0

    .line 99
    check-cast v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 100
    invoke-virtual {v7, v6, v3, v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onInputFocusTransfer(FZZ)V

    .line 102
    :cond_1
    const/4 v3, 0x3

    .line 105
    if-eq v2, v4, :cond_2

    .line 106
    if-ne v2, v3, :cond_4

    .line 108
    :cond_2
    iget-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 110
    iput-boolean v5, v6, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 112
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 114
    move-result v6

    .line 117
    iget-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 118
    iget v7, v7, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    .line 120
    sub-float/2addr v6, v7

    .line 122
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 123
    move-result-wide v7

    .line 126
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 127
    iget-wide v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    .line 129
    sub-long/2addr v7, v9

    .line 131
    long-to-float v7, v7

    .line 132
    div-float/2addr v6, v7

    .line 133
    iget-boolean v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 134
    if-ne v2, v3, :cond_3

    .line 136
    goto :goto_1

    .line 138
    :cond_3
    move v4, v5

    .line 139
    :goto_1
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 140
    invoke-virtual {p0, v6, v0, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onInputFocusTransfer(FZZ)V

    .line 142
    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 145
    return-void
    .line 148
.end method
