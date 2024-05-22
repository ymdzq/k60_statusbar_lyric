.class public final Lcom/android/keyguard/ClockEventController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DOZE_TICKRATE_THRESHOLD:F

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final batteryCallback:Lcom/android/keyguard/ClockEventController$batteryCallback$1;

.field public final batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public cachedWeatherData:Lcom/android/systemui/plugins/WeatherData;

.field public clock:Lcom/android/systemui/plugins/ClockController;

.field public final configListener:Lcom/android/keyguard/ClockEventController$configListener$1;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public disposableHandle:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

.field public dozeAmount:F

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public isCharging:Z

.field public isDozing:Z

.field public isKeyguardVisible:Z

.field public isRegistered:Z

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;

.field public largeClockIsDark:Z

.field public final largeLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

.field public final localeBroadcastReceiver:Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final resources:Landroid/content/res/Resources;

.field public smallClockIsDark:Z

.field public final smallLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/ClockEventController;

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
    sput-object v0, Lcom/android/keyguard/ClockEventController;->TAG:Ljava/lang/String;

    .line 15
    const v0, 0x3f7d70a4    # 0.99f

    .line 17
    sput v0, Lcom/android/keyguard/ClockEventController;->DOZE_TICKRATE_THRESHOLD:F

    .line 20
    return-void
    .line 22
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/res/Resources;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/ClockEventController;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 7
    iput-object p3, p0, Lcom/android/keyguard/ClockEventController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 9
    iput-object p4, p0, Lcom/android/keyguard/ClockEventController;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 11
    iput-object p5, p0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 13
    iput-object p6, p0, Lcom/android/keyguard/ClockEventController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 15
    iput-object p7, p0, Lcom/android/keyguard/ClockEventController;->resources:Landroid/content/res/Resources;

    .line 17
    iput-object p8, p0, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    .line 19
    iput-object p9, p0, Lcom/android/keyguard/ClockEventController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 21
    iput-object p10, p0, Lcom/android/keyguard/ClockEventController;->smallLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 23
    iput-object p11, p0, Lcom/android/keyguard/ClockEventController;->largeLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 25
    iput-object p12, p0, Lcom/android/keyguard/ClockEventController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 27
    sget-object p1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 29
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/android/keyguard/ClockEventController;->smallClockIsDark:Z

    .line 32
    iput-boolean p1, p0, Lcom/android/keyguard/ClockEventController;->largeClockIsDark:Z

    .line 34
    new-instance p1, Lcom/android/keyguard/ClockEventController$configListener$1;

    .line 36
    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$configListener$1;-><init>(Lcom/android/keyguard/ClockEventController;)V

    .line 38
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->configListener:Lcom/android/keyguard/ClockEventController$configListener$1;

    .line 41
    new-instance p1, Lcom/android/keyguard/ClockEventController$batteryCallback$1;

    .line 43
    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$batteryCallback$1;-><init>(Lcom/android/keyguard/ClockEventController;)V

    .line 45
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->batteryCallback:Lcom/android/keyguard/ClockEventController$batteryCallback$1;

    .line 48
    new-instance p1, Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;

    .line 50
    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;-><init>(Lcom/android/keyguard/ClockEventController;)V

    .line 52
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->localeBroadcastReceiver:Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;

    .line 55
    new-instance p1, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;

    .line 57
    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/ClockEventController;)V

    .line 59
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;

    .line 62
    return-void
    .line 64
.end method

.method public static final access$handleDoze(Lcom/android/keyguard/ClockEventController;F)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/android/keyguard/ClockEventController;->dozeAmount:F

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockController;->getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 8
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lcom/android/systemui/plugins/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/ClockAnimations;

    .line 12
    move-result-object v1

    .line 15
    iget v2, p0, Lcom/android/keyguard/ClockEventController;->dozeAmount:F

    .line 16
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ClockAnimations;->doze(F)V

    .line 18
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 21
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/ClockAnimations;

    .line 25
    move-result-object v0

    .line 28
    iget v1, p0, Lcom/android/keyguard/ClockEventController;->dozeAmount:F

    .line 29
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ClockAnimations;->doze(F)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 34
    const/4 v1, 0x1

    .line 36
    const/4 v2, 0x0

    .line 37
    sget v3, Lcom/android/keyguard/ClockEventController;->DOZE_TICKRATE_THRESHOLD:F

    .line 38
    if-eqz v0, :cond_2

    .line 40
    cmpg-float v4, p1, v3

    .line 42
    if-gez v4, :cond_1

    .line 44
    move v4, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v4, v2

    .line 48
    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 52
    if-eqz p0, :cond_4

    .line 54
    cmpg-float p1, p1, v3

    .line 56
    if-gez p1, :cond_3

    .line 58
    goto :goto_1

    .line 60
    :cond_3
    move v1, v2

    .line 61
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    .line 62
    :cond_4
    return-void
    .line 65
.end method


# virtual methods
.method public final getShouldTimeListenerRun()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/ClockEventController;->isKeyguardVisible:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/android/keyguard/ClockEventController;->dozeAmount:F

    .line 6
    sget v0, Lcom/android/keyguard/ClockEventController;->DOZE_TICKRATE_THRESHOLD:F

    .line 8
    cmpg-float p0, p0, v0

    .line 10
    if-gez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final listenForAnyStateToAodTransition$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/ClockEventController$listenForAnyStateToAodTransition$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$listenForAnyStateToAodTransition$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 p0, 0x3

    .line 8
    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final listenForDozeAmount$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/ClockEventController$listenForDozeAmount$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$listenForDozeAmount$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 p0, 0x3

    .line 8
    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final listenForDozeAmountTransition$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/ClockEventController$listenForDozeAmountTransition$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$listenForDozeAmountTransition$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 p0, 0x3

    .line 8
    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final listenForDozing$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/ClockEventController$listenForDozing$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$listenForDozing$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 p0, 0x3

    .line 8
    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final updateColors()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 4
    new-instance v1, Landroid/util/TypedValue;

    .line 7
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 12
    move-result-object v0

    .line 15
    const v2, 0x1010590    # @android:attr/isLightTheme

    .line 16
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 20
    iget v0, v1, Landroid/util/TypedValue;->data:I

    .line 23
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_0

    .line 26
    move v2, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v1

    .line 30
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/ClockEventController;->smallClockIsDark:Z

    .line 31
    if-nez v0, :cond_1

    .line 33
    goto :goto_1

    .line 35
    :cond_1
    move v3, v1

    .line 36
    :goto_1
    iput-boolean v3, p0, Lcom/android/keyguard/ClockEventController;->largeClockIsDark:Z

    .line 37
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 39
    if-eqz v0, :cond_2

    .line 41
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockController;->getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 43
    move-result-object v1

    .line 46
    invoke-interface {v1}, Lcom/android/systemui/plugins/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/ClockFaceEvents;

    .line 47
    move-result-object v1

    .line 50
    iget-boolean v2, p0, Lcom/android/keyguard/ClockEventController;->smallClockIsDark:Z

    .line 51
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ClockFaceEvents;->onRegionDarknessChanged(Z)V

    .line 53
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 56
    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/ClockFaceEvents;

    .line 60
    move-result-object v0

    .line 63
    iget-boolean p0, p0, Lcom/android/keyguard/ClockEventController;->largeClockIsDark:Z

    .line 64
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/ClockFaceEvents;->onRegionDarknessChanged(Z)V

    .line 66
    :cond_2
    return-void
    .line 69
.end method

.method public final updateFontSizes()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockController;->getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 6
    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/android/systemui/plugins/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/ClockFaceEvents;

    .line 10
    move-result-object v1

    .line 13
    const v2, 0x7f0710a7    # @dimen/small_clock_text_size '86.0dp'

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->resources:Landroid/content/res/Resources;

    .line 17
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ClockFaceEvents;->onFontSettingChanged(F)V

    .line 24
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 27
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/ClockFaceEvents;

    .line 31
    move-result-object v0

    .line 34
    const v1, 0x7f0704c4    # @dimen/large_clock_text_size '150.0dp'

    .line 35
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result p0

    .line 41
    int-to-float p0, p0

    .line 42
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/ClockFaceEvents;->onFontSettingChanged(F)V

    .line 43
    :cond_0
    return-void
    .line 46
.end method
