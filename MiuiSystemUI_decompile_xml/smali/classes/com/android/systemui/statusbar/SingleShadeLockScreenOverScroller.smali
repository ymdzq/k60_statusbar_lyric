.class public final Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/LockScreenShadeOverScroller;


# instance fields
.field public final context:Landroid/content/Context;

.field public expansionDragDownAmount:F

.field public maxOverScrollAmount:I

.field public final nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public totalDistanceForFullShadeTransition:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->context:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p2

    .line 14
    const p3, 0x7f070639    # @dimen/lockscreen_shade_qs_transition_distance '@dimen/lockscreen_shade_full_transition_distance'

    .line 15
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result p3

    .line 21
    iput p3, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->totalDistanceForFullShadeTransition:I

    .line 22
    const p3, 0x7f070630    # @dimen/lockscreen_shade_max_over_scroll_amount '24.0dp'

    .line 24
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result p2

    .line 30
    iput p2, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->maxOverScrollAmount:I

    .line 31
    new-instance p2, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$1;

    .line 33
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$1;-><init>(Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;)V

    .line 35
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 38
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 40
    return-void
    .line 43
.end method


# virtual methods
.method public final setExpansionDragDownAmount(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->expansionDragDownAmount:F

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->expansionDragDownAmount:F

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 17
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 19
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 23
    if-ne p1, v1, :cond_2

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 27
    move-result p1

    .line 30
    iget v1, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->expansionDragDownAmount:F

    .line 31
    int-to-float p1, p1

    .line 33
    div-float/2addr v1, p1

    .line 34
    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    .line 35
    move-result v1

    .line 38
    iget v2, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->totalDistanceForFullShadeTransition:I

    .line 39
    int-to-float v2, v2

    .line 41
    div-float/2addr v2, p1

    .line 42
    invoke-static {v1, v2}, Lcom/android/app/animation/Interpolators;->getOvershootInterpolation(FF)F

    .line 43
    move-result p1

    .line 46
    iget p0, p0, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->maxOverScrollAmount:I

    .line 47
    int-to-float p0, p0

    .line 49
    mul-float/2addr p1, p0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    :goto_1
    float-to-int p0, p1

    .line 53
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 54
    int-to-float p0, p0

    .line 56
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExtraTopInsetForFullShadeTransition(F)V

    .line 57
    return-void
    .line 60
.end method
