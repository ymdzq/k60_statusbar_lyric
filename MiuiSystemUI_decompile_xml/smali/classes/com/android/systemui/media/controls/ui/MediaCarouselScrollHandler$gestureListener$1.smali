.class public final Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$gestureListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    mul-float p1, p3, p3

    .line 7
    float-to-double v0, p1

    .line 9
    float-to-double v2, p4

    .line 10
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 11
    mul-double/2addr v4, v2

    .line 13
    mul-double/2addr v4, v2

    .line 14
    cmpg-double p2, v0, v4

    .line 15
    const/4 p4, 0x0

    .line 17
    if-gez p2, :cond_0

    .line 18
    goto/16 :goto_7

    .line 20
    :cond_0
    const p2, 0x49742400    # 1000000.0f

    .line 22
    cmpg-float p1, p1, p2

    .line 25
    if-gez p1, :cond_1

    .line 27
    goto/16 :goto_7

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 31
    invoke-virtual {p1}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->getContentTranslation()F

    .line 33
    move-result p2

    .line 36
    const/4 v0, 0x0

    .line 37
    cmpg-float v1, p2, v0

    .line 38
    const/4 v2, 0x1

    .line 40
    if-nez v1, :cond_2

    .line 41
    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v1, p4

    .line 45
    :goto_0
    if-nez v1, :cond_7

    .line 46
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    .line 48
    move-result v1

    .line 51
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 52
    move-result v3

    .line 55
    cmpg-float v1, v1, v3

    .line 56
    if-nez v1, :cond_3

    .line 58
    move v1, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move v1, p4

    .line 62
    :goto_1
    if-eqz v1, :cond_6

    .line 63
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    .line 65
    if-eqz v1, :cond_4

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 69
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 71
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    move p4, v2

    .line 77
    :cond_4
    if-eqz p4, :cond_5

    .line 78
    goto :goto_2

    .line 80
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->getMaxTranslation()I

    .line 81
    move-result p4

    .line 84
    int-to-float p4, p4

    .line 85
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 86
    move-result p2

    .line 89
    mul-float v0, p2, p4

    .line 90
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->showsSettingsButton:Z

    .line 92
    if-nez p2, :cond_6

    .line 94
    new-instance p2, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$onFling$1;

    .line 96
    invoke-direct {p2, p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$onFling$1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;)V

    .line 98
    const-wide/16 v3, 0x64

    .line 101
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 103
    invoke-interface {p4, p2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 105
    :cond_6
    :goto_2
    sget-object p2, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 108
    invoke-static {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 110
    move-result-object p0

    .line 113
    sget-object p2, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    .line 114
    sget-object p4, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandlerKt;->translationConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 116
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 121
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->setAnimationTargetX(F)V

    .line 124
    goto :goto_6

    .line 127
    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->getRelativeScrollX()I

    .line 128
    move-result p2

    .line 131
    iget v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->playerWidthPlusPadding:I

    .line 132
    if-lez v1, :cond_8

    .line 134
    div-int/2addr p2, v1

    .line 136
    goto :goto_3

    .line 137
    :cond_8
    move p2, p4

    .line 138
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->isRtl()Z

    .line 139
    move-result v1

    .line 142
    if-eqz v1, :cond_9

    .line 143
    cmpl-float p3, p3, v0

    .line 145
    if-lez p3, :cond_a

    .line 147
    goto :goto_4

    .line 149
    :cond_9
    cmpg-float p3, p3, v0

    .line 150
    if-gez p3, :cond_a

    .line 152
    :goto_4
    move p3, v2

    .line 154
    goto :goto_5

    .line 155
    :cond_a
    move p3, p4

    .line 156
    :goto_5
    if-eqz p3, :cond_b

    .line 157
    add-int/lit8 p2, p2, 0x1

    .line 159
    :cond_b
    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    .line 161
    move-result p2

    .line 164
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    .line 165
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 167
    move-result p4

    .line 170
    sub-int/2addr p4, v2

    .line 171
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    .line 172
    move-result p2

    .line 175
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 176
    move-result-object p2

    .line 179
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 180
    move-result p2

    .line 183
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    .line 184
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->startScroll(I)V

    .line 187
    :goto_6
    move p4, v2

    .line 190
    :goto_7
    return p4
    .line 191
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 13
    move-result p2

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 17
    move-result p1

    .line 20
    sub-float/2addr p2, p1

    .line 21
    neg-float p1, p2

    .line 22
    float-to-int p1, p1

    .line 23
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 24
    invoke-virtual {p2, p1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    .line 26
    move-result p4

    .line 29
    const/4 v0, 0x0

    .line 30
    if-nez p4, :cond_0

    .line 31
    invoke-virtual {p2, v0}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 33
    goto/16 :goto_5

    .line 36
    :cond_0
    const/4 p4, 0x1

    .line 38
    invoke-virtual {p2, p4}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 39
    invoke-virtual {p2}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->getContentTranslation()F

    .line 42
    move-result v1

    .line 45
    const/4 v2, 0x0

    .line 46
    cmpg-float v3, v1, v2

    .line 47
    if-nez v3, :cond_1

    .line 49
    move v4, p4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v4, v0

    .line 53
    :goto_0
    if-eqz v4, :cond_2

    .line 54
    invoke-virtual {p2, p1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    .line 56
    move-result p1

    .line 59
    if-nez p1, :cond_a

    .line 60
    :cond_2
    sub-float p1, v1, p3

    .line 62
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 64
    move-result v4

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->getMaxTranslation()I

    .line 68
    move-result v5

    .line 71
    int-to-float v5, v5

    .line 72
    cmpl-float v5, v4, v5

    .line 73
    if-lez v5, :cond_5

    .line 75
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    .line 77
    move-result v5

    .line 80
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 81
    move-result v6

    .line 84
    cmpg-float v5, v5, v6

    .line 85
    if-nez v5, :cond_3

    .line 87
    move v5, p4

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move v5, v0

    .line 91
    :goto_1
    if-nez v5, :cond_5

    .line 92
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 94
    move-result v5

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->getMaxTranslation()I

    .line 98
    move-result v6

    .line 101
    int-to-float v6, v6

    .line 102
    cmpl-float v5, v5, v6

    .line 103
    const v6, 0x3e4ccccd    # 0.2f

    .line 105
    if-lez v5, :cond_4

    .line 108
    mul-float/2addr p3, v6

    .line 110
    sub-float p1, v1, p3

    .line 111
    goto :goto_2

    .line 113
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 114
    move-result p1

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->getMaxTranslation()I

    .line 118
    move-result p3

    .line 121
    int-to-float p3, p3

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->getMaxTranslation()I

    .line 123
    move-result v5

    .line 126
    int-to-float v5, v5

    .line 127
    sub-float/2addr v4, v5

    .line 128
    mul-float/2addr v4, v6

    .line 129
    add-float/2addr v4, p3

    .line 130
    mul-float/2addr p1, v4

    .line 131
    :cond_5
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 132
    move-result p3

    .line 135
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 136
    move-result v1

    .line 139
    cmpg-float p3, p3, v1

    .line 140
    if-nez p3, :cond_6

    .line 142
    move p3, p4

    .line 144
    goto :goto_3

    .line 145
    :cond_6
    move p3, v0

    .line 146
    :goto_3
    if-nez p3, :cond_8

    .line 147
    if-nez v3, :cond_7

    .line 149
    move v0, p4

    .line 151
    :cond_7
    if-nez v0, :cond_8

    .line 152
    float-to-int p3, p1

    .line 154
    neg-int p3, p3

    .line 155
    invoke-virtual {p2, p3}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    .line 156
    move-result p3

    .line 159
    if-eqz p3, :cond_8

    .line 160
    move p1, v2

    .line 162
    :cond_8
    sget-object p3, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 163
    invoke-static {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 165
    move-result-object p3

    .line 168
    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isRunning()Z

    .line 169
    move-result v0

    .line 172
    if-eqz v0, :cond_9

    .line 173
    sget-object p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    .line 175
    sget-object v0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandlerKt;->translationConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 177
    invoke-virtual {p3, p0, p1, v2, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 179
    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 182
    goto :goto_4

    .line 185
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->setContentTranslation(F)V

    .line 186
    :goto_4
    invoke-virtual {p2, p1}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->setAnimationTargetX(F)V

    .line 189
    move v0, p4

    .line 192
    :cond_a
    :goto_5
    return v0
    .line 193
.end method
