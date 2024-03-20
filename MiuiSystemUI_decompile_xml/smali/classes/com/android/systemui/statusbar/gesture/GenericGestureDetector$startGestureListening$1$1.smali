.class public final synthetic Lcom/android/systemui/statusbar/gesture/GenericGestureDetector$startGestureListening$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector$startGestureListening$1$1;->$tmp0:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector$startGestureListening$1$1;->$tmp0:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto/16 :goto_1

    .line 11
    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    iget-object v3, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->loggerTag:Ljava/lang/String;

    .line 21
    iget-object v4, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;

    .line 23
    const/4 v5, 0x0

    .line 25
    if-eqz v0, :cond_5

    .line 26
    if-eq v0, v1, :cond_3

    .line 28
    const/4 v1, 0x2

    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    const/4 v1, 0x3

    .line 33
    if-eq v0, v1, :cond_3

    .line 34
    goto/16 :goto_1

    .line 36
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    .line 38
    if-nez v0, :cond_2

    .line 40
    goto/16 :goto_1

    .line 42
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 44
    move-result v0

    .line 47
    iget v1, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->startY:F

    .line 48
    cmpg-float v0, v0, v1

    .line 50
    if-gez v0, :cond_7

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 54
    move-result v0

    .line 57
    sub-float/2addr v1, v0

    .line 58
    iget v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->swipeDistanceThreshold:I

    .line 59
    int-to-float v0, v0

    .line 61
    cmpl-float v0, v1, v0

    .line 62
    if-ltz v0, :cond_7

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 66
    move-result-wide v0

    .line 69
    iget-wide v6, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->startTime:J

    .line 70
    sub-long/2addr v0, v6

    .line 72
    const-wide/16 v6, 0x1f4

    .line 73
    cmp-long v0, v0, v6

    .line 75
    if-gez v0, :cond_7

    .line 77
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 81
    move-result v0

    .line 84
    float-to-int v0, v0

    .line 85
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 89
    sget-object v5, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetected$2;->INSTANCE:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetected$2;

    .line 91
    iget-object v4, v4, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 93
    invoke-virtual {v4, v3, v1, v5, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 95
    move-result-object v1

    .line 98
    invoke-interface {v1, v0}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 99
    invoke-virtual {v4, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->callbacks:Ljava/util/Map;

    .line 105
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 107
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 109
    move-result-object p0

    .line 112
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object p0

    .line 116
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v0

    .line 126
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 127
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    goto :goto_0

    .line 132
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    .line 133
    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 137
    move-result p1

    .line 140
    float-to-int p1, p1

    .line 141
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 145
    sget-object v1, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetectionEndedWithoutTriggering$2;->INSTANCE:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetectionEndedWithoutTriggering$2;

    .line 147
    iget-object v4, v4, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 149
    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 151
    move-result-object v0

    .line 154
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 155
    invoke-virtual {v4, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 158
    :cond_4
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    .line 161
    goto :goto_1

    .line 163
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->startOfGestureIsWithinBounds(Landroid/view/MotionEvent;)Z

    .line 164
    move-result v0

    .line 167
    if-eqz v0, :cond_6

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 170
    move-result v0

    .line 173
    float-to-int v0, v0

    .line 174
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 178
    sget-object v6, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetectionStarted$2;->INSTANCE:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetectionStarted$2;

    .line 180
    iget-object v4, v4, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 182
    invoke-virtual {v4, v3, v5, v6, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 184
    move-result-object v2

    .line 187
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 188
    invoke-virtual {v4, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 194
    move-result v0

    .line 197
    iput v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->startY:F

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 200
    move-result-wide v2

    .line 203
    iput-wide v2, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->startTime:J

    .line 204
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    .line 206
    goto :goto_1

    .line 208
    :cond_6
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    .line 209
    :cond_7
    :goto_1
    return-void
    .line 211
.end method
