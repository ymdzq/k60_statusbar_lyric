.class public Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;
.super Lcom/android/systemui/statusbar/notification/row/BaseMiuiNotificationBackgroundView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mActualHeight:I

.field public mActualWidth:I

.field public mBackground:Landroid/graphics/drawable/Drawable;

.field public mBottomAmountClips:Z

.field public mBottomIsRounded:Z

.field public mClipBottomAmount:I

.field public mClipTopAmount:I

.field public final mCornerRadii:[F

.field public final mDontModifyCorners:Z

.field public mDrawableAlpha:I

.field public mExpandAnimationHeight:I

.field public mExpandAnimationRunning:Z

.field public mExpandAnimationWidth:I

.field public mIsPressedAllowed:Z

.field public mRippleColor:Ljava/lang/Integer;

.field public mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/BaseMiuiNotificationBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/16 p1, 0x8

    .line 5
    new-array p1, p1, [F

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mCornerRadii:[F

    .line 9
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountClips:Z

    .line 12
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    .line 15
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualWidth:I

    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationWidth:I

    .line 19
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationHeight:I

    .line 21
    const/16 p1, 0xff

    .line 23
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDrawableAlpha:I

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p1

    .line 30
    const p2, 0x7f050015    # @bool/config_clipNotificationsToOutline 'true'

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 34
    move-result p1

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDontModifyCorners:Z

    .line 38
    return-void
    .line 40
.end method

.method private getActualWidth()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationWidth:I

    .line 7
    if-le v0, v1, :cond_0

    .line 9
    return v0

    .line 11
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualWidth:I

    .line 12
    if-le v0, v1, :cond_1

    .line 14
    return v0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    move-result p0

    .line 20
    return p0
    .line 21
.end method


# virtual methods
.method public final drawableHotspotChanged(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final drawableStateChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setState([I)V

    .line 6
    return-void
    .line 9
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "mDontModifyCorners: "

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDontModifyCorners:Z

    .line 9
    const-string v1, "mClipTopAmount: "

    .line 11
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object p2

    .line 16
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipTopAmount:I

    .line 17
    const-string v1, "mClipBottomAmount: "

    .line 19
    invoke-static {p2, v0, p1, v1}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object p2

    .line 24
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipBottomAmount:I

    .line 25
    const-string v1, "mCornerRadii: "

    .line 27
    invoke-static {p2, v0, p1, v1}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object p2

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mCornerRadii:[F

    .line 33
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    const-string v0, "mBottomIsRounded: "

    .line 51
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomIsRounded:Z

    .line 56
    const-string v1, "mBottomAmountClips: "

    .line 58
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object p2

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountClips:Z

    .line 64
    const-string v1, "mActualWidth: "

    .line 66
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    move-result-object p2

    .line 71
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualWidth:I

    .line 72
    const-string v1, "mActualHeight: "

    .line 74
    invoke-static {p2, v0, p1, v1}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move-result-object p2

    .line 79
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mTintColor:I

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object p2

    .line 97
    invoke-static {p2}, Lcom/android/systemui/util/ColorUtilKt;->hexColorString(Ljava/lang/Integer;)Ljava/lang/String;

    .line 98
    move-result-object p2

    .line 101
    const-string v0, "mTintColor: "

    .line 102
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mRippleColor:Ljava/lang/Integer;

    .line 111
    invoke-static {p2}, Lcom/android/systemui/util/ColorUtilKt;->hexColorString(Ljava/lang/Integer;)Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 116
    const-string v0, "mRippleColor: "

    .line 117
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    .line 126
    const-string v0, "mBackground: "

    .line 128
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 133
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p0

    .line 141
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    return-void
    .line 145
.end method

.method public getActualHeight()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationHeight:I

    .line 7
    if-le v0, v1, :cond_0

    .line 9
    return v0

    .line 11
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    .line 12
    if-le v0, v1, :cond_1

    .line 14
    return v0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    move-result p0

    .line 20
    return p0
    .line 21
.end method

.method public final getBlurOutline(Landroid/graphics/Outline;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 6
    :cond_0
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    .line 9
    if-nez v0, :cond_2

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result v0

    .line 23
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v0

    .line 29
    :goto_0
    move v5, v0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v4

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mCornerRadii:[F

    .line 37
    const/4 v0, 0x0

    .line 39
    aget v6, p0, v0

    .line 40
    move-object v1, p1

    .line 42
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 43
    :cond_2
    return-void
    .line 46
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipTopAmount:I

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipBottomAmount:I

    .line 4
    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getActualHeight()I

    .line 7
    move-result v1

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 13
    if-eqz v0, :cond_a

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 20
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_1

    .line 23
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipTopAmount:I

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 27
    move-result v2

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getActualHeight()I

    .line 31
    move-result v3

    .line 34
    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipBottomAmount:I

    .line 35
    sub-int/2addr v3, v4

    .line 37
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 46
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 52
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 55
    if-eqz v0, :cond_9

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 59
    move-result-object v2

    .line 62
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 63
    if-eqz v3, :cond_3

    .line 65
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 67
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpState()Z

    .line 69
    move-result v2

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move v2, v1

    .line 74
    :goto_1
    if-nez v2, :cond_4

    .line 75
    move v2, v1

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipTopAmount:I

    .line 79
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getActualHeight()I

    .line 81
    move-result v3

    .line 84
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomIsRounded:Z

    .line 85
    if-eqz v4, :cond_5

    .line 87
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountClips:Z

    .line 89
    if-eqz v4, :cond_5

    .line 91
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 93
    if-nez v4, :cond_5

    .line 95
    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipBottomAmount:I

    .line 97
    sub-int/2addr v3, v4

    .line 99
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 100
    move-result v4

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 104
    move-result v5

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getActualWidth()I

    .line 108
    move-result v6

    .line 111
    if-eqz v4, :cond_6

    .line 112
    sub-int v1, v5, v6

    .line 114
    :cond_6
    if-eqz v4, :cond_7

    .line 116
    move v4, v5

    .line 118
    goto :goto_3

    .line 119
    :cond_7
    move v4, v6

    .line 120
    :goto_3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 121
    if-eqz p0, :cond_8

    .line 123
    sub-int/2addr v5, v6

    .line 125
    int-to-float p0, v5

    .line 126
    const/high16 v1, 0x40000000    # 2.0f

    .line 127
    div-float/2addr p0, v1

    .line 129
    float-to-int v1, p0

    .line 130
    add-int v4, v1, v6

    .line 131
    :cond_8
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 139
    :cond_a
    return-void
    .line 142
.end method

.method public setActualHeight(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
    .line 12
.end method

.method public setActualWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualWidth:I

    .line 2
    return-void
    .line 4
.end method

.method public setBottomAmountClips(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountClips:Z

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountClips:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipBottomAmount:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public setClipTopAmount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipTopAmount:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public setCustomBackground(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 5
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mRippleColor:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mTintColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setTint(I)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_2

    .line 11
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 12
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDontModifyCorners:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_4

    .line 14
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mCornerRadii:[F

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 17
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawableAlpha(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDrawableAlpha:I

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 11
    return-void
    .line 14
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 4
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 17
    xor-int/lit8 p1, p1, 0x1

    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAntiAlias(Z)V

    .line 21
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 24
    if-nez p1, :cond_1

    .line 26
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDrawableAlpha:I

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDrawableAlpha(I)V

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 33
    return-void
    .line 36
.end method

.method public setExpandAnimationSize(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationHeight:I

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationWidth:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
    .line 9
.end method

.method public setPressedAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mIsPressedAllowed:Z

    .line 2
    return-void
    .line 4
.end method

.method public setRadius(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mCornerRadii:[F

    .line 2
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    cmpl-float v2, p1, v2

    .line 7
    const/4 v3, 0x4

    .line 9
    if-nez v2, :cond_0

    .line 10
    aget v2, v0, v3

    .line 12
    cmpl-float v2, p2, v2

    .line 14
    if-nez v2, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    cmpl-float v2, p2, v2

    .line 20
    const/4 v4, 0x1

    .line 22
    if-eqz v2, :cond_1

    .line 23
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v2, v1

    .line 27
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomIsRounded:Z

    .line 28
    aput p1, v0, v1

    .line 30
    aput p1, v0, v4

    .line 32
    const/4 v2, 0x2

    .line 34
    aput p1, v0, v2

    .line 35
    const/4 v2, 0x3

    .line 37
    aput p1, v0, v2

    .line 38
    aput p2, v0, v3

    .line 40
    const/4 p1, 0x5

    .line 42
    aput p2, v0, p1

    .line 43
    const/4 p1, 0x6

    .line 45
    aput p2, v0, p1

    .line 46
    const/4 p1, 0x7

    .line 48
    aput p2, v0, p1

    .line 49
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDontModifyCorners:Z

    .line 51
    if-eqz p1, :cond_2

    .line 53
    goto :goto_1

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 56
    instance-of p2, p1, Landroid/graphics/drawable/LayerDrawable;

    .line 58
    if-eqz p2, :cond_3

    .line 60
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 62
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 64
    move-result-object p1

    .line 67
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mCornerRadii:[F

    .line 70
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 72
    :cond_3
    :goto_1
    return-void
    .line 75
.end method

.method public setRippleColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mRippleColor:Ljava/lang/Integer;

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mRippleColor:Ljava/lang/Integer;

    .line 25
    :goto_0
    return-void
    .line 27
.end method

.method public setState([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mIsPressedAllowed:Z

    .line 12
    if-nez v0, :cond_0

    .line 14
    const v0, 0x10100a7    # @android:attr/state_pressed

    .line 16
    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    .line 19
    move-result-object p1

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 25
    :cond_1
    return-void
    .line 28
.end method

.method public setTint(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 4
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 14
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mTintColor:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    return-void
    .line 22
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 8
    if-ne p1, p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method
