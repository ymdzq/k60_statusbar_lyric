.class public final Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView$OnExpandChangeListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;


# instance fields
.field public added:Z

.field public final applyLayout:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

.field public final blurUtils:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

.field public final choreographer:Landroid/view/Choreographer;

.field public final context:Landroid/content/Context;

.field public final controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

.field public downX:F

.field public final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public isExpand:Z

.field public lp:Landroid/view/WindowManager$LayoutParams;

.field public lpChanged:Landroid/view/WindowManager$LayoutParams;

.field public final ncSwitchController:Ldagger/Lazy;

.field public final notifyListeners:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

.field public final onWindowChangeListeners:Landroid/util/ArraySet;

.field public pendingApplyLayout:Z

.field public pendingNotifyListeners:Z

.field public final statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public statusIcons:Landroid/view/View;

.field public final statusIconsOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

.field public themeBg:Landroid/view/View;

.field public transToControlPanel:Z

.field public visibility:I

.field public final windowManager:Landroid/view/WindowManager;

.field public windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

.field public final windowViewOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/policy/BlurUtilsExt;Ldagger/Lazy;Landroid/view/Choreographer;Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->blurUtils:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->ncSwitchController:Ldagger/Lazy;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->choreographer:Landroid/view/Choreographer;

    .line 17
    const-string/jumbo p2, "window"

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Landroid/view/WindowManager;

    .line 26
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowManager:Landroid/view/WindowManager;

    .line 28
    new-instance p1, Landroid/util/ArraySet;

    .line 30
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onWindowChangeListeners:Landroid/util/ArraySet;

    .line 35
    const/16 p1, 0x8

    .line 37
    iput p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->visibility:I

    .line 39
    new-instance p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    .line 41
    const/4 p2, 0x1

    .line 43
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;-><init>(Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;I)V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIconsOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    .line 47
    new-instance p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    .line 49
    const/4 p3, 0x0

    .line 51
    invoke-direct {p1, p0, p3}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;-><init>(Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;I)V

    .line 52
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowViewOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    .line 55
    new-instance p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    .line 57
    invoke-direct {p1, p0, p3}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;-><init>(Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;I)V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->applyLayout:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    .line 62
    new-instance p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    .line 64
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;-><init>(Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;I)V

    .line 66
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->notifyListeners:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    .line 69
    invoke-virtual {p8, p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->addStatusBarViewsListener(Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;)V

    .line 71
    return-void
    .line 74
.end method


# virtual methods
.method public final dispatchToControlPanel(Landroid/view/MotionEvent;F)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 10
    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 20
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->downX:F

    .line 24
    :cond_1
    iget v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->downX:F

    .line 26
    const/high16 v2, 0x40000000    # 2.0f

    .line 28
    div-float/2addr p2, v2

    .line 30
    cmpl-float p2, v0, p2

    .line 31
    if-lez p2, :cond_3

    .line 33
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 35
    if-nez p0, :cond_2

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    if-eqz p0, :cond_3

    .line 40
    const/4 p2, 0x1

    .line 42
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->handleMotionEvent(Landroid/view/MotionEvent;Z)Z

    .line 43
    move-result v1

    .line 46
    :cond_3
    :goto_0
    return v1
    .line 47
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "ControlPanelWindowManager state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    .line 7
    const-string p2, "  added="

    .line 9
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onExpandChange(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "onExpandChange: "

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v2, ", "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    const-string v1, "ControlPanelWindowManager"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 31
    const/4 v1, 0x0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->asView()Landroid/view/View;

    .line 36
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v0, v1

    .line 41
    :goto_0
    if-nez v0, :cond_1

    .line 42
    return-void

    .line 44
    :cond_1
    const-wide/16 v2, 0x0

    .line 45
    const/4 v0, 0x1

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz p1, :cond_4

    .line 49
    iget-boolean v5, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    .line 51
    if-nez v5, :cond_4

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    .line 55
    iput v4, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->visibility:I

    .line 57
    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 59
    if-eqz p1, :cond_2

    .line 61
    const/4 v1, -0x1

    .line 63
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 64
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 66
    and-int/lit8 v1, v1, -0x9

    .line 68
    const/high16 v5, 0x20000

    .line 70
    or-int/2addr v1, v5

    .line 72
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 75
    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 79
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    move v4, v0

    .line 85
    :cond_3
    if-nez v4, :cond_c

    .line 86
    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->applyLayout:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    .line 88
    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->doFrame(J)V

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->pendingNotifyListeners:Z

    .line 93
    goto/16 :goto_4

    .line 95
    :cond_4
    if-nez p1, :cond_c

    .line 97
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    .line 99
    if-eqz p1, :cond_c

    .line 101
    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 103
    if-eqz p1, :cond_5

    .line 105
    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->goneWhenCollapsed()Z

    .line 107
    move-result p1

    .line 110
    if-ne p1, v0, :cond_5

    .line 111
    move p1, v0

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    move p1, v4

    .line 115
    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    .line 116
    const/16 v5, 0x8

    .line 118
    if-eqz p1, :cond_6

    .line 120
    move v6, v5

    .line 122
    goto :goto_2

    .line 123
    :cond_6
    const/4 v6, 0x4

    .line 124
    :goto_2
    iput v6, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->visibility:I

    .line 125
    iget-object v6, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 127
    if-eqz v6, :cond_8

    .line 129
    if-eqz p1, :cond_7

    .line 131
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 133
    :cond_7
    iget p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 135
    or-int/2addr p1, v5

    .line 137
    const v5, -0x20001

    .line 138
    and-int/2addr p1, v5

    .line 141
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 142
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 144
    if-eqz p1, :cond_9

    .line 146
    invoke-virtual {p1, v6}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 148
    move-result p1

    .line 151
    if-nez p1, :cond_9

    .line 152
    move v4, v0

    .line 154
    :cond_9
    if-nez v4, :cond_c

    .line 155
    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIcons:Landroid/view/View;

    .line 157
    if-eqz p1, :cond_a

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    .line 161
    move-result p1

    .line 164
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 165
    move-result-object p1

    .line 168
    goto :goto_3

    .line 169
    :cond_a
    move-object p1, v1

    .line 170
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->notifyListeners:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    .line 171
    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->doFrame(J)V

    .line 173
    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->pendingApplyLayout:Z

    .line 176
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIcons:Landroid/view/View;

    .line 178
    if-eqz v0, :cond_b

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    .line 182
    move-result v0

    .line 185
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    move-result-object v1

    .line 189
    :cond_b
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    move-result p1

    .line 193
    if-eqz p1, :cond_c

    .line 194
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIconsOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;->onDraw()V

    .line 198
    :cond_c
    :goto_4
    return-void
    .line 201
.end method

.method public final onExpandChanged(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onExpandChange(Z)V

    .line 15
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onExpandChange(Z)V

    .line 19
    goto :goto_0

    .line 22
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 23
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 27
    move-result-object p0

    .line 30
    if-eqz p0, :cond_3

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 33
    :cond_3
    :goto_0
    return-void
    .line 36
.end method

.method public final onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    .line 2
    return-void
    .line 5
.end method

.method public final onPromptIconChanged(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStatusIconsChanged(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIcons:Landroid/view/View;

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIcons:Landroid/view/View;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIconsOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 23
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIcons:Landroid/view/View;

    .line 26
    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 30
    move-result-object p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 36
    :cond_2
    :goto_0
    return-void
    .line 39
.end method

.method public final setBlurRatio(FZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->asView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->themeBg:Landroid/view/View;

    .line 15
    if-nez v1, :cond_2

    .line 17
    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 20
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 23
    iget-boolean v2, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->ncSwitching:Z

    .line 25
    iget-object v3, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->ncSwitchController:Ldagger/Lazy;

    .line 27
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 32
    check-cast v4, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 33
    iget-boolean v4, v4, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->switchedToControl:Z

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    const-string v6, "cc setBlurRatio="

    .line 39
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 44
    const-string v6, ", switching="

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, ", fromNc="

    .line 55
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, ", switchedToCC="

    .line 63
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 74
    const-string v4, "NCSwitchController"

    .line 75
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-boolean v1, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->ncSwitching:Z

    .line 80
    const/4 v2, 0x0

    .line 82
    if-eqz v1, :cond_3

    .line 83
    if-eqz p2, :cond_5

    .line 85
    :cond_3
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 87
    move-result-object p2

    .line 90
    check-cast p2, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 91
    iget-boolean p2, p2, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->switchedToControl:Z

    .line 93
    if-eqz p2, :cond_4

    .line 95
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 97
    move-result-object p0

    .line 100
    check-cast p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->changePanelState(F)V

    .line 103
    goto :goto_2

    .line 106
    :cond_4
    sget-object p2, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->URI_DISABLE_WINDOW_BLURS:Landroid/net/Uri;

    .line 107
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->blurUtils:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 109
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->applyBlur(Landroid/view/View;FZ)V

    .line 111
    :cond_5
    :goto_2
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 114
    move-result-object p0

    .line 117
    check-cast p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    const/4 p2, 0x0

    .line 123
    cmpg-float p1, p1, p2

    .line 124
    if-nez p1, :cond_6

    .line 126
    const/4 p1, 0x1

    .line 128
    goto :goto_3

    .line 129
    :cond_6
    move p1, v2

    .line 130
    :goto_3
    if-eqz p1, :cond_a

    .line 131
    sget-boolean p1, Lcom/android/systemui/controlcenter/utils/Constants;->DEBUG:Z

    .line 133
    if-eqz p1, :cond_7

    .line 135
    const-string p1, "ccWindowChangedListener - reset and switchedToControl to false"

    .line 137
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_7
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->switchedToControl:Z

    .line 142
    if-eqz p1, :cond_9

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->getPanelViewController()Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 146
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 150
    move-result p1

    .line 153
    if-nez p1, :cond_8

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->getPanelViewController()Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 156
    move-result-object p1

    .line 159
    iget-boolean p1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNCSwitching:Z

    .line 160
    if-eqz p1, :cond_9

    .line 162
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->changePanelState(F)V

    .line 164
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->setSwitchedToControl(Z)V

    .line 167
    :cond_a
    return-void
    .line 170
.end method
