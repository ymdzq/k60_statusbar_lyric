.class public final Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_1

    .line 8
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 10
    move-result p4

    .line 13
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 14
    move-result p3

    .line 17
    cmpl-float p3, p4, p3

    .line 18
    if-lez p3, :cond_0

    .line 20
    move p3, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p3, v2

    .line 24
    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object p3

    .line 28
    iput-object p3, v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    .line 29
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 31
    iget-object p4, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    .line 33
    new-instance v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda2;

    .line 35
    invoke-direct {v0, v3}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda2;-><init>(I)V

    .line 37
    invoke-virtual {p4, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 40
    move-result-object p4

    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    invoke-virtual {p4, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object p4

    .line 49
    check-cast p4, Ljava/lang/Boolean;

    .line 50
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    move-result p4

    .line 55
    iput-boolean p4, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerInitiallyShowing:Z

    .line 56
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 58
    iget-object p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    .line 60
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    move-result p3

    .line 65
    if-eqz p3, :cond_1

    .line 66
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 68
    iput-object v0, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mExpanded:Ljava/lang/Boolean;

    .line 70
    iget-object p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCurrentScrimController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 72
    invoke-interface {p3}, Lcom/android/systemui/dreams/touch/scrim/ScrimController;->show()V

    .line 74
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 77
    iget-object p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    .line 79
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    move-result p3

    .line 84
    if-nez p3, :cond_2

    .line 85
    return v2

    .line 87
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 88
    iget-boolean p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerInitiallyShowing:Z

    .line 90
    if-nez p3, :cond_3

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 94
    move-result p3

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 98
    move-result p4

    .line 101
    cmpg-float p3, p3, p4

    .line 102
    if-gez p3, :cond_3

    .line 104
    return v3

    .line 106
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 107
    iget-boolean p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerInitiallyShowing:Z

    .line 109
    if-eqz p3, :cond_4

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 113
    move-result p3

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 117
    move-result p4

    .line 120
    cmpl-float p3, p3, p4

    .line 121
    if-lez p3, :cond_4

    .line 123
    return v3

    .line 125
    :cond_4
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 126
    iget-object p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    .line 128
    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    .line 130
    move-result p3

    .line 133
    if-nez p3, :cond_5

    .line 134
    return v3

    .line 136
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 137
    move-result p3

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 141
    move-result p4

    .line 144
    sub-float/2addr p3, p4

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 146
    move-result p1

    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 150
    move-result p2

    .line 153
    sub-float/2addr p1, p2

    .line 154
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 155
    move-result p1

    .line 158
    iget-object p2, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 159
    iget-object p2, p2, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mTouchSession:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    .line 161
    check-cast p2, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;

    .line 163
    iget-object p2, p2, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;->mBounds:Landroid/graphics/Rect;

    .line 165
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 167
    move-result p2

    .line 170
    int-to-float p2, p2

    .line 171
    div-float/2addr p1, p2

    .line 172
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 173
    iget-boolean p2, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerInitiallyShowing:Z

    .line 175
    if-eqz p2, :cond_6

    .line 177
    goto :goto_1

    .line 179
    :cond_6
    const/high16 p2, 0x3f800000    # 1.0f

    .line 180
    sub-float p1, p2, p1

    .line 182
    :goto_1
    iput p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCurrentExpansion:F

    .line 184
    new-instance p2, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 186
    iget-object p4, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mExpanded:Ljava/lang/Boolean;

    .line 188
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    move-result p4

    .line 193
    invoke-direct {p2, p1, p3, p4, v3}, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;-><init>(FFZZ)V

    .line 194
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCurrentScrimController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 197
    invoke-interface {p0, p2}, Lcom/android/systemui/dreams/touch/scrim/ScrimController;->expand(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 199
    return v3
    .line 202
.end method
