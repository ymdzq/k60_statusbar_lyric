.class public final Lcom/android/systemui/common/ui/view/LongPressHandlingView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final interactionHandler$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2;-><init>(Lcom/android/systemui/common/ui/view/LongPressHandlingView;)V

    .line 7
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView;->interactionHandler$delegate:Lkotlin/Lazy;

    .line 14
    return-void
    .line 16
.end method

.method private final getInteractionHandler()Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView;->interactionHandler$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;

    .line 8
    return-object p0
    .line 10
.end method


# virtual methods
.method public final getListener()Lcom/android/systemui/common/ui/view/LongPressHandlingView$Listener;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/common/ui/view/LongPressHandlingView;->getInteractionHandler()Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    if-eq v1, v0, :cond_2

    .line 15
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    const/4 p1, 0x3

    .line 20
    if-eq v1, p1, :cond_0

    .line 21
    sget-object p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Other;->INSTANCE:Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Other;

    .line 23
    goto :goto_1

    .line 25
    :cond_0
    sget-object p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Cancel;->INSTANCE:Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Cancel;

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    new-instance v1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Move;

    .line 29
    invoke-static {p1}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewKt;->distanceMoved(Landroid/view/MotionEvent;)F

    .line 31
    move-result p1

    .line 34
    invoke-direct {v1, p1}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Move;-><init>(F)V

    .line 35
    goto :goto_0

    .line 38
    :cond_2
    new-instance v1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;

    .line 39
    invoke-static {p1}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewKt;->distanceMoved(Landroid/view/MotionEvent;)F

    .line 41
    move-result v2

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 45
    move-result-wide v3

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 49
    move-result-wide v5

    .line 52
    sub-long/2addr v3, v5

    .line 53
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;-><init>(FJ)V

    .line 54
    goto :goto_0

    .line 57
    :cond_3
    new-instance v1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 60
    move-result v2

    .line 63
    float-to-int v2, v2

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 65
    move-result p1

    .line 68
    float-to-int p1, p1

    .line 69
    invoke-direct {v1, v2, p1}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;-><init>(II)V

    .line 70
    :goto_0
    move-object p1, v1

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    const/4 p1, 0x0

    .line 75
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->isLongPressHandlingEnabled:Z

    .line 76
    const/4 v2, 0x0

    .line 78
    if-nez v1, :cond_5

    .line 79
    goto/16 :goto_4

    .line 81
    :cond_5
    instance-of v1, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;

    .line 83
    if-eqz v1, :cond_6

    .line 85
    check-cast p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;

    .line 87
    iget v1, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;->x:I

    .line 89
    new-instance v2, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$scheduleLongPress$1;

    .line 91
    iget p1, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;->y:I

    .line 93
    invoke-direct {v2, p0, v1, p1}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$scheduleLongPress$1;-><init>(Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;II)V

    .line 95
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 98
    move-result p1

    .line 101
    int-to-long v3, p1

    .line 102
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    move-result-object p1

    .line 106
    iget-object v1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->postDelayed:Lkotlin/jvm/functions/Function2;

    .line 107
    invoke-interface {v1, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object p1

    .line 112
    check-cast p1, Lkotlinx/coroutines/DisposableHandle;

    .line 113
    iput-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->scheduledLongPressHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 115
    goto :goto_3

    .line 117
    :cond_6
    instance-of v0, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Move;

    .line 118
    if-eqz v0, :cond_7

    .line 120
    check-cast p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Move;

    .line 122
    iget p1, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Move;->distanceMoved:F

    .line 124
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    .line 126
    move-result v0

    .line 129
    int-to-float v0, v0

    .line 130
    cmpl-float p1, p1, v0

    .line 131
    if-lez p1, :cond_b

    .line 133
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->scheduledLongPressHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 135
    if-eqz p0, :cond_b

    .line 137
    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 139
    goto :goto_2

    .line 142
    :cond_7
    instance-of v0, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;

    .line 143
    if-eqz v0, :cond_a

    .line 145
    iget-object v0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->scheduledLongPressHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 147
    if-eqz v0, :cond_8

    .line 149
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 151
    :cond_8
    check-cast p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;

    .line 154
    iget v0, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;->distanceMoved:F

    .line 156
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    .line 158
    move-result v1

    .line 161
    int-to-float v1, v1

    .line 162
    cmpg-float v0, v0, v1

    .line 163
    if-gtz v0, :cond_b

    .line 165
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 167
    move-result v0

    .line 170
    int-to-long v0, v0

    .line 171
    iget-wide v3, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;->gestureDuration:J

    .line 172
    cmp-long p1, v3, v0

    .line 174
    if-gez p1, :cond_b

    .line 176
    iget-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->isAttachedToWindow:Lkotlin/jvm/functions/Function0;

    .line 178
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 180
    move-result-object p1

    .line 183
    check-cast p1, Ljava/lang/Boolean;

    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 186
    move-result p1

    .line 189
    if-nez p1, :cond_9

    .line 190
    goto :goto_2

    .line 192
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->onSingleTapDetected:Lkotlin/jvm/functions/Function0;

    .line 193
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 195
    goto :goto_2

    .line 198
    :cond_a
    instance-of p1, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Cancel;

    .line 199
    if-eqz p1, :cond_b

    .line 201
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->scheduledLongPressHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 203
    if-eqz p0, :cond_b

    .line 205
    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 207
    :cond_b
    :goto_2
    move v0, v2

    .line 210
    :goto_3
    move v2, v0

    .line 211
    :goto_4
    return v2
    .line 212
.end method

.method public final setListener(Lcom/android/systemui/common/ui/view/LongPressHandlingView$Listener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setLongPressHandlingEnabled(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/common/ui/view/LongPressHandlingView;->getInteractionHandler()Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;

    .line 2
    move-result-object p0

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->isLongPressHandlingEnabled:Z

    .line 6
    return-void
    .line 8
.end method
