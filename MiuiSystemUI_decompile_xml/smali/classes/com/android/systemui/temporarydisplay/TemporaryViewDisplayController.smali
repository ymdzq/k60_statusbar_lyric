.class public abstract Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final activeViews:Ljava/util/List;

.field public final commonWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final displayScaleListener:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final listeners:Ljava/util/Set;

.field public final logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final powerManager:Landroid/os/PowerManager;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final tempViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

.field public final viewLayoutRes:I

.field public final wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;ILcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->windowManager:Landroid/view/WindowManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->powerManager:Landroid/os/PowerManager;

    .line 19
    iput p9, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->viewLayoutRes:I

    .line 21
    iput-object p10, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    .line 23
    iput-object p11, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 25
    iput-object p12, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->tempViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

    .line 27
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 29
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 31
    const/4 p2, -0x2

    .line 34
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 35
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 37
    const/16 p2, 0x7da

    .line 39
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 41
    const/16 p2, 0x28

    .line 43
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 45
    const/4 p2, -0x3

    .line 47
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 48
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->commonWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 62
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->listeners:Ljava/util/Set;

    .line 67
    new-instance p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;

    .line 69
    invoke-direct {p1, p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;)V

    .line 71
    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayScaleListener:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;

    .line 74
    return-void
    .line 76
.end method

.method public static final access$reinflateView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v0, :cond_0

    .line 12
    monitor-exit p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    .line 16
    if-eqz v1, :cond_1

    .line 18
    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 20
    iget-object v3, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 22
    const/4 v4, 0x1

    .line 24
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovedFromWindowManager(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/View;Z)V

    .line 25
    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->windowManager:Landroid/view/WindowManager;

    .line 28
    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->inflateAndUpdateView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit p0

    .line 36
    :goto_0
    return-void

    .line 37
    :cond_1
    :try_start_2
    const-string v0, "First item in activeViews list must have a valid view"

    .line 38
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    monitor-exit p0

    .line 51
    throw v0
    .line 52
.end method

.method public static synthetic getActiveViews$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public abstract animateViewIn$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/view/ViewGroup;)V
.end method

.method public abstract animateViewOut$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;)V
.end method

.method public final declared-synchronized displayView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getTimeoutMs()I

    .line 5
    move-result v1

    .line 8
    const/4 v2, 0x7

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    .line 10
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 14
    check-cast v1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    move-result-wide v1

    .line 24
    int-to-long v3, v0

    .line 25
    add-long/2addr v1, v3

    .line 26
    iget-object v5, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 27
    const/4 v6, 0x0

    .line 29
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 33
    check-cast v5, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 34
    const/4 v7, 0x0

    .line 36
    if-eqz v5, :cond_2

    .line 37
    iget-object v8, v5, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 39
    invoke-virtual {v8}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 41
    move-result-object v8

    .line 44
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 45
    move-result-object v9

    .line 48
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v8

    .line 52
    if-eqz v8, :cond_2

    .line 53
    iget-object v0, v5, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    .line 55
    if-eqz v0, :cond_1

    .line 57
    iget-object v6, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 59
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    sget-object v8, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 64
    sget-object v9, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewUpdate$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewUpdate$2;

    .line 66
    iget-object v10, v6, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 68
    iget-object v6, v6, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    .line 70
    invoke-virtual {v10, v6, v8, v9, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 72
    move-result-object v6

    .line 75
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 76
    move-result-object v7

    .line 79
    invoke-interface {v6, v7}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    .line 83
    move-result-object v7

    .line 86
    invoke-interface {v6, v7}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 90
    move-result-object v7

    .line 93
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 94
    move-result-object v7

    .line 97
    invoke-interface {v6, v7}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v10, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 101
    iput-object p1, v5, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 104
    iput-wide v1, v5, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->timeExpirationMillis:J

    .line 106
    new-instance v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;

    .line 108
    invoke-direct {v1, p0, v5}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V

    .line 110
    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 113
    invoke-interface {v2, v1, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 115
    move-result-object v1

    .line 118
    iget-object v2, v5, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    .line 119
    if-eqz v2, :cond_0

    .line 121
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 123
    :cond_0
    iput-object v1, v5, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->updateView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    .line 131
    return-void

    .line 132
    :cond_1
    :try_start_1
    const-string p1, "First item in activeViews list must have a valid view"

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 140
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    throw v0

    .line 144
    :cond_2
    new-instance v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 145
    invoke-direct {v3, p1, v1, v2}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;J)V

    .line 147
    if-nez v5, :cond_3

    .line 150
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayScaleListener:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 154
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 156
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 161
    check-cast p1, Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->showNewView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    monitor-exit p0

    .line 171
    return-void

    .line 172
    :cond_3
    :try_start_2
    iget-object v1, v5, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 173
    invoke-virtual {v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 175
    move-result-object v1

    .line 178
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 179
    move-result-object v2

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 183
    move-result v1

    .line 186
    if-lez v1, :cond_5

    .line 187
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 194
    sget-object v2, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAdditionDelayed$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAdditionDelayed$2;

    .line 196
    iget-object v4, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 198
    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    .line 200
    invoke-virtual {v4, v0, v1, v2, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 202
    move-result-object v0

    .line 205
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 209
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    .line 213
    move-result-object v1

    .line 216
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 220
    move-result-object v1

    .line 223
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 224
    move-result-object v1

    .line 227
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v4, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 231
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 234
    move-result-object v0

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeFromActivesIfNeeded(Ljava/lang/String;)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 241
    check-cast v0, Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 245
    move-result v0

    .line 248
    if-ge v6, v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 251
    check-cast v0, Ljava/util/ArrayList;

    .line 253
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 255
    move-result-object v0

    .line 258
    check-cast v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 259
    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 261
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 263
    move-result-object v0

    .line 266
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 267
    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 271
    move-result v0

    .line 274
    if-lez v0, :cond_4

    .line 275
    add-int/lit8 v6, v6, 0x1

    .line 277
    goto :goto_0

    .line 279
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 280
    check-cast p1, Ljava/util/ArrayList;

    .line 282
    invoke-virtual {p1, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    monitor-exit p0

    .line 287
    return-void

    .line 288
    :cond_5
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->hideView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V

    .line 289
    iget-object p1, v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 292
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 294
    move-result-object p1

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeFromActivesIfNeeded(Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 301
    check-cast p1, Ljava/util/ArrayList;

    .line 303
    invoke-virtual {p1, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 305
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->showNewView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    monitor-exit p0

    .line 311
    return-void

    .line 312
    :catchall_0
    move-exception p1

    .line 313
    monitor-exit p0

    .line 314
    throw p1
    .line 315
.end method

.method public final declared-synchronized dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p2, "Active views size: "

    .line 2
    const-string v0, "Current time millis: "

    .line 4
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 7
    check-cast v1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v1

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 56
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object p2

    .line 61
    const/4 v0, 0x0

    .line 62
    move v1, v0

    .line 63
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 73
    add-int/lit8 v3, v1, 0x1

    .line 74
    if-ltz v1, :cond_1

    .line 76
    check-cast v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v5, "View["

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "]:"

    .line 93
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 101
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    iget-object v1, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v5, "  info="

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 123
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    iget-object v1, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    .line 127
    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 131
    goto :goto_1

    .line 132
    :cond_0
    move v1, v0

    .line 133
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string v5, "  hasView="

    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 150
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    iget-wide v1, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->timeExpirationMillis:J

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    const-string v5, "  timeExpiration="

    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 172
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    move v1, v3

    .line 176
    goto :goto_0

    .line 177
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 178
    const/4 p1, 0x0

    .line 181
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_2
    monitor-exit p0

    .line 183
    return-void

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    monitor-exit p0

    .line 186
    throw p1
    .line 187
.end method

.method public abstract getTouchableRegion(Landroid/graphics/Rect;Landroid/view/View;)V
.end method

.method public abstract getWindowLayoutParams$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/view/WindowManager$LayoutParams;
.end method

.method public final hideView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v3, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewHidden$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewHidden$2;

    .line 11
    iget-object v4, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    .line 15
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 25
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    invoke-interface {v1, v0}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 47
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeViewFromWindow(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;Ljava/lang/String;)V

    .line 50
    return-void
    .line 53
.end method

.method public final inflateAndUpdateView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->viewLayoutRes:I

    .line 10
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Landroid/view/ViewGroup;

    .line 17
    iput-object v1, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    .line 19
    new-instance v2, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;

    .line 21
    new-instance v4, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$inflateAndUpdateView$newViewController$1;

    .line 23
    invoke-direct {v4, p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$inflateAndUpdateView$newViewController$1;-><init>(Ljava/lang/Object;)V

    .line 25
    invoke-direct {v2, v1, v4}, Lcom/android/systemui/temporarydisplay/TouchableRegionViewController;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V

    .line 28
    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->updateView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/ViewGroup;)V

    .line 34
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 37
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->getWindowLayoutParams$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/view/WindowManager$LayoutParams;

    .line 42
    move-result-object v4

    .line 45
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    const/4 v0, 0x1

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 57
    iget-object p1, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 67
    sget-object v5, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddedToWindowManager$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddedToWindowManager$2;

    .line 69
    iget-object v6, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 71
    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    .line 73
    invoke-virtual {v6, v0, v4, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 82
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 89
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 100
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 101
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 104
    move-result p1

    .line 107
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 108
    invoke-virtual {v6, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 111
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->windowManager:Landroid/view/WindowManager;

    .line 114
    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->animateViewIn$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/view/ViewGroup;)V

    .line 119
    return-void
    .line 122
.end method

.method public final declared-synchronized removeFromActivesIfNeeded(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    move-object v2, v1

    .line 19
    check-cast v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 20
    iget-object v2, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 22
    invoke-virtual {v2}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 27
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    check-cast v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 36
    if-eqz v1, :cond_3

    .line 38
    iget-object p1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    .line 40
    if-eqz p1, :cond_2

    .line 42
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 47
    check-cast p1, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_3
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0

    .line 57
    throw p1
    .line 58
.end method

.method public final declared-synchronized removeTimedOutViews()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    move-object v3, v2

    .line 24
    check-cast v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 25
    iget-wide v3, v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->timeExpirationMillis:J

    .line 27
    iget-object v5, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 29
    check-cast v5, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 31
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    move-result-wide v5

    .line 39
    const/16 v7, 0x3e8

    .line 40
    int-to-long v7, v7

    .line 42
    add-long/2addr v5, v7

    .line 43
    cmp-long v3, v3, v5

    .line 44
    if-gez v3, :cond_1

    .line 46
    const/4 v3, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 50
    :goto_1
    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v0

    .line 60
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 70
    check-cast v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 71
    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 73
    check-cast v2, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 80
    iget-object v3, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 87
    sget-object v5, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewExpiration$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewExpiration$2;

    .line 89
    iget-object v6, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 91
    iget-object v2, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    .line 93
    const/4 v7, 0x0

    .line 95
    invoke-virtual {v6, v2, v4, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 96
    move-result-object v2

    .line 99
    invoke-virtual {v3}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 100
    move-result-object v4

    .line 103
    invoke-interface {v2, v4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 110
    invoke-interface {v2, v4}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v3}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 114
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 121
    invoke-interface {v2, v3}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v6, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 125
    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->listeners:Ljava/util/Set;

    .line 128
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    move-result-object v2

    .line 133
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v3

    .line 137
    if-eqz v3, :cond_3

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    move-result-object v3

    .line 143
    check-cast v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$Listener;

    .line 144
    iget-object v4, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 146
    invoke-virtual {v4}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 148
    move-result-object v4

    .line 151
    const-string v5, "TIMEOUT_EXPIRED_BEFORE_REDISPLAY"

    .line 152
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$Listener;->onInfoPermanentlyRemoved(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    goto :goto_2

    .line 157
    :cond_4
    monitor-exit p0

    .line 158
    return-void

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    monitor-exit p0

    .line 161
    throw v0
    .line 162
.end method

.method public final declared-synchronized removeView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 8
    sget-object v2, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemoval$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewRemoval$2;

    .line 10
    iget-object v3, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    .line 14
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 30
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 37
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 47
    move-object v2, v1

    .line 48
    check-cast v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 49
    iget-object v2, v2, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 51
    invoke-virtual {v2}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 56
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    move-object v4, v1

    .line 63
    :cond_1
    check-cast v4, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 64
    if-nez v4, :cond_2

    .line 66
    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 68
    const-string v0, "View not found in list"

    .line 70
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovalIgnored(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 77
    check-cast v0, Ljava/util/ArrayList;

    .line 79
    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 85
    check-cast v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 86
    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 88
    check-cast v2, Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->listeners:Ljava/util/Set;

    .line 95
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object v2

    .line 100
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v3

    .line 104
    if-eqz v3, :cond_3

    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v3

    .line 110
    check-cast v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$Listener;

    .line 111
    invoke-interface {v3, p1, p2}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$Listener;->onInfoPermanentlyRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    goto :goto_0

    .line 116
    :cond_3
    iget-object v2, v4, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    .line 117
    if-eqz v2, :cond_4

    .line 119
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 121
    :cond_4
    iget-object v2, v4, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    .line 124
    if-nez v2, :cond_5

    .line 126
    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 128
    const-string v0, "No view to remove"

    .line 130
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovalIgnored(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    monitor-exit p0

    .line 135
    return-void

    .line 136
    :cond_5
    :try_start_2
    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 137
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 142
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    move-result v0

    .line 146
    if-nez v0, :cond_6

    .line 147
    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 149
    const-string v0, "View isn\'t the currently displayed view"

    .line 151
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovalIgnored(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    monitor-exit p0

    .line 156
    return-void

    .line 157
    :cond_6
    :try_start_3
    invoke-virtual {p0, v4, p2}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeViewFromWindow(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeTimedOutViews()V

    .line 161
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 164
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 166
    move-result-object p1

    .line 169
    check-cast p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 170
    if-eqz p1, :cond_7

    .line 172
    iget-wide v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->timeExpirationMillis:J

    .line 174
    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 176
    check-cast p2, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 178
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 183
    move-result-wide v2

    .line 186
    sub-long/2addr v0, v2

    .line 187
    long-to-int p2, v0

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->showNewView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;I)V

    .line 189
    goto :goto_1

    .line 192
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayScaleListener:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;

    .line 193
    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 195
    check-cast p2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 197
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :goto_1
    monitor-exit p0

    .line 202
    return-void

    .line 203
    :catchall_0
    move-exception p1

    .line 204
    monitor-exit p0

    .line 205
    throw p1
    .line 206
.end method

.method public final removeViewFromWindow(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    const-string p2, "View is null"

    .line 12
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovalIgnored(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    iput-object v1, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    .line 21
    new-instance v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;

    .line 23
    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;Landroid/view/ViewGroup;)V

    .line 25
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->animateViewOut$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;)V

    .line 28
    return-void
    .line 31
.end method

.method public final showNewView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;I)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v3, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddition$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$logViewAddition$2;

    .line 11
    const/4 v4, 0x0

    .line 13
    iget-object v5, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 14
    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    .line 16
    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getId()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 25
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    invoke-interface {v1, v0}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v5, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 47
    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 50
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 52
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->tempViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    sget-object v2, Lcom/android/systemui/temporarydisplay/TemporaryViewUiEvent;->TEMPORARY_VIEW_ADDED:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEvent;

    .line 61
    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 63
    invoke-interface {v1, v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->powerManager:Landroid/os/PowerManager;

    .line 68
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 70
    move-result v0

    .line 73
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    .line 74
    if-nez v0, :cond_0

    .line 76
    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 78
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    iput-object v0, v1, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mTag:Ljava/lang/String;

    .line 84
    const v0, 0x1000001a

    .line 86
    iput v0, v1, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mLevelsAndFlags:I

    .line 89
    invoke-virtual {v1}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/WakeLock;

    .line 91
    move-result-object v0

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 96
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWindowTitle()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 101
    iput-object v0, v1, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mTag:Ljava/lang/String;

    .line 102
    const/16 v0, 0xa

    .line 104
    iput v0, v1, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mLevelsAndFlags:I

    .line 106
    invoke-virtual {v1}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/WakeLock;

    .line 108
    move-result-object v0

    .line 111
    :goto_0
    iput-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->wakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 112
    iget-object v1, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 114
    invoke-virtual {v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWakeReason()Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 119
    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;

    .line 123
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$updateTimeout$cancelViewTimeout$1;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V

    .line 125
    int-to-long v1, p2

    .line 128
    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 129
    invoke-interface {p2, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 131
    move-result-object p2

    .line 134
    iget-object v0, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    .line 135
    if-eqz v0, :cond_1

    .line 137
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 139
    :cond_1
    iput-object p2, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->inflateAndUpdateView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V

    .line 144
    return-void
    .line 147
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Lcom/android/systemui/Dumpable;)V

    .line 4
    return-void
    .line 7
.end method

.method public abstract updateView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/ViewGroup;)V
.end method
