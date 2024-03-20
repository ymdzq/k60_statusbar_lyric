.class public abstract Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final callbacks:Ljava/util/Map;

.field public final displayId:I

.field public inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field public inputReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public final logger:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;

.field public final loggerTag:Ljava/lang/String;

.field public monitoringCurrentTouch:Z

.field public startTime:J

.field public startY:F

.field public final swipeDistanceThreshold:I

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->tag:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->displayId:I

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 23
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->callbacks:Ljava/util/Map;

    .line 28
    iput-object p2, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->loggerTag:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 37
    const p2, 0x10502c9    # @android:dimen/timepicker_ampm_label_size

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result p1

    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->swipeDistanceThreshold:I

    .line 45
    return-void
    .line 47
.end method


# virtual methods
.method public final addOnGestureDetectedCallback(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->callbacks:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    move-result v1

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->stopGestureListening$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()V

    .line 13
    new-instance p1, Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 16
    iget-object p2, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->tag:Ljava/lang/String;

    .line 18
    iget v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->displayId:I

    .line 20
    invoke-direct {p1, p2, v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;I)V

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    move-result-object p2

    .line 28
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 29
    move-result-object v0

    .line 32
    new-instance v1, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector$startGestureListening$1$1;

    .line 33
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector$startGestureListening$1$1;-><init>(Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;)V

    .line 35
    new-instance v2, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 38
    iget-object v3, p1, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    .line 40
    invoke-virtual {v3}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 42
    move-result-object v3

    .line 45
    invoke-direct {v2, v3, p2, v0, v1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    .line 46
    iput-object v2, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->inputReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 51
    iget-object p1, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    sget-object p2, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 58
    sget-object v0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logInputListeningStarted$2;->INSTANCE:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logInputListeningStarted$2;

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->loggerTag:Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    .line 64
    iget-object p1, p1, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 65
    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {p1, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 71
    :cond_0
    return-void
    .line 74
.end method

.method public final removeOnGestureDetectedCallback(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->callbacks:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->stopGestureListening$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public abstract startOfGestureIsWithinBounds(Landroid/view/MotionEvent;)Z
.end method

.method public final stopGestureListening$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-object v1, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 7
    iget-object v0, v0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    .line 9
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->inputReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iput-object v1, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->inputReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->mReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;

    .line 20
    invoke-virtual {v0}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    sget-object v2, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 30
    sget-object v3, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logInputListeningStopped$2;->INSTANCE:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logInputListeningStopped$2;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->loggerTag:Ljava/lang/String;

    .line 34
    iget-object v0, v0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 36
    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 38
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 42
    return-void
    .line 45
.end method
