.class public final Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;
.super Lcom/android/systemui/media/controls/ui/KeyguardMediaController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mIsDownInMediaHeaderView:Z


# virtual methods
.method public final shouldInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;->mIsDownInMediaHeaderView:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 6
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 9
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;->mScrollView:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaScrollView;

    .line 17
    if-nez p1, :cond_0

    .line 19
    const p1, 0x7f0a0580    # @id/media_carousel_scroller

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaScrollView;

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;->mScrollView:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaScrollView;

    .line 30
    :cond_0
    return-void
    .line 32
.end method
