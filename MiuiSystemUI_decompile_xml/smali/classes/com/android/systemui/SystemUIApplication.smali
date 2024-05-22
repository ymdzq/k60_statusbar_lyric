.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;


# static fields
.field public static sContext:Landroid/content/Context;


# instance fields
.field public mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

.field public mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

.field public mInitializer:Lcom/android/systemui/SystemUIInitializer;

.field public mServices:[Lcom/android/systemui/CoreStartable;

.field public mServicesStarted:Z

.field public mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    const/4 p0, 0x0

    .line 5
    sput-boolean p0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    .line 6
    return-void
    .line 8
.end method

.method public static notifyBootCompleted(Lcom/android/systemui/CoreStartable;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, ".onBootCompleted()"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    const-wide/16 v1, 0x1000

    .line 22
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 24
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/CoreStartable;->onBootCompleted()V

    .line 27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 30
    return-void
    .line 33
.end method

.method public static overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    if-eqz p2, :cond_0

    .line 7
    const p2, 0x104066f    # @android:string/permdesc_deliverCompanionMessages

    .line 9
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const p2, 0x104066e    # @android:string/permdesc_createNetworkSockets

    .line 17
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    :goto_0
    const-string p2, "android.substName"

    .line 24
    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 29
    return-void
    .line 32
.end method

.method public static startStartable(Lcom/android/systemui/CoreStartable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "running: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "SystemUIService"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    const-string v1, ".start()"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    const-wide/16 v1, 0x1000

    .line 42
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 44
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/CoreStartable;->start()V

    .line 47
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 50
    return-void
    .line 53
.end method

.method public static timeInitialization(Ljava/lang/String;Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string p3, " "

    .line 14
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p3

    .line 25
    invoke-virtual {p2, p3}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 26
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 29
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    move-result-wide p1

    .line 38
    sub-long/2addr p1, v0

    .line 39
    const-wide/16 v0, 0x3e8

    .line 40
    cmp-long p3, p1, v0

    .line 42
    if-lez p3, :cond_0

    .line 44
    new-instance p3, Ljava/lang/StringBuilder;

    .line 46
    const-string v0, "Initialization of "

    .line 48
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string p0, " took "

    .line 56
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    const-string p0, " ms"

    .line 64
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    const-string p1, "SystemUIService"

    .line 73
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
    .line 78
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 6
    invoke-interface {v0}, Lcom/android/systemui/dagger/SysUIComponent;->getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 12
    move-result v1

    .line 15
    const-string v2, ".onConfigurationChanged()"

    .line 16
    const-wide/16 v3, 0x1000

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 34
    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 37
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 39
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    .line 45
    array-length v0, v0

    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_0
    if-ge v1, v0, :cond_3

    .line 49
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    .line 51
    aget-object v5, v5, v1

    .line 53
    if-eqz v5, :cond_2

    .line 55
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 57
    move-result v5

    .line 60
    if-eqz v5, :cond_1

    .line 61
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    .line 63
    aget-object v5, v5, v1

    .line 65
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 71
    move-result-object v5

    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 78
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 79
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    .line 82
    aget-object v5, v5, v1

    .line 84
    invoke-interface {v5, p1}, Lcom/android/systemui/CoreStartable;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 92
    goto :goto_0

    .line 94
    :cond_3
    return-void
    .line 95
.end method

.method public final onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    new-instance v0, Landroid/util/TimingsTraceLog;

    .line 5
    const-string v1, "SystemUIBootTiming"

    .line 7
    const-wide/16 v2, 0x1000

    .line 9
    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 11
    const-string v1, "DependencyInjection"

    .line 14
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    .line 19
    invoke-interface {v1, p0}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    .line 21
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mInitializer:Lcom/android/systemui/SystemUIInitializer;

    .line 25
    invoke-virtual {v1}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    .line 27
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 31
    invoke-interface {v1}, Lcom/android/systemui/dagger/SysUIComponent;->provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;

    .line 33
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    .line 37
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    .line 46
    const v0, 0x7f140561    # @style/Theme.SystemUI

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Application;->setTheme(I)V

    .line 52
    const-string v0, "persist.debug.trace_layouts"

    .line 55
    const/4 v1, 0x0

    .line 57
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 58
    move-result v0

    .line 61
    invoke-static {v0}, Landroid/view/View;->setTraceLayoutSteps(Z)V

    .line 62
    const-string v0, "persist.debug.trace_request_layout_class"

    .line 65
    const/4 v2, 0x0

    .line 67
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/view/View;->setTracedRequestLayoutClassClass(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 75
    move-result-object v0

    .line 78
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 79
    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    .line 87
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 89
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    const/16 v2, 0x3e8

    .line 94
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 96
    invoke-static {}, Landroid/view/SurfaceControl;->getGPUContextPriority()I

    .line 99
    move-result v2

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    const-string v4, "Found SurfaceFlinger\'s GPU Priority: "

    .line 105
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 116
    const-string v4, "SystemUIService"

    .line 117
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget v3, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_REALTIME_NV:I

    .line 122
    if-ne v2, v3, :cond_0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    const-string v3, "Setting SysUI\'s GPU Context priority to: "

    .line 128
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    sget v3, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v2

    .line 141
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget v2, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    .line 145
    invoke-static {v2}, Landroid/view/ThreadedRenderer;->setContextPriority(I)V

    .line 147
    :cond_0
    new-instance v2, Lcom/android/systemui/SystemUIApplication$1;

    .line 150
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;I)V

    .line 152
    invoke-virtual {p0, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    .line 158
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 160
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    new-instance v1, Lcom/android/systemui/SystemUIApplication$1;

    .line 165
    const/4 v2, 0x1

    .line 167
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;I)V

    .line 168
    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 178
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 179
    move-result-object v1

    .line 182
    if-eqz v0, :cond_2

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, ":"

    .line 195
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 204
    move-result v0

    .line 207
    if-eqz v0, :cond_2

    .line 208
    return-void

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->startSecondaryUserServicesIfNeeded()V

    .line 211
    :goto_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 214
    move-result-object p0

    .line 217
    sput-object p0, Lcom/android/systemui/SystemUIApplication;->sContext:Landroid/content/Context;

    .line 218
    return-void
    .line 220
.end method

.method public final setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication;->mContextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    .line 2
    return-void
    .line 4
.end method

.method public final startSecondaryUserServicesIfNeeded()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    new-instance v1, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda0;

    .line 4
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda0;-><init>(I)V

    .line 7
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 10
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 14
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 17
    invoke-interface {v1}, Lcom/android/systemui/dagger/SysUIComponent;->getPerUserStartables()Ljava/util/Map;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 23
    const-string v1, "StartSecondaryServices"

    .line 26
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    return-void
    .line 32
.end method

.method public final startServicesIfNeeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mInitializer:Lcom/android/systemui/SystemUIInitializer;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIInitializer;->getVendorComponent(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda0;-><init>(I)V

    .line 3
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 4
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v2}, Lcom/android/systemui/dagger/SysUIComponent;->getStartables()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 5
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v2}, Lcom/android/systemui/dagger/SysUIComponent;->getPerUserStartables()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    const-string v2, "StartServices"

    .line 6
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final startServicesIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    check-cast p3, Ljava/util/TreeMap;

    invoke-virtual {p3}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    add-int/2addr v0, v3

    new-array v0, v0, [Lcom/android/systemui/CoreStartable;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    invoke-virtual {v0}, Lcom/android/systemui/BootCompleteCacheImpl;->isBootComplete()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "sys.boot_completed"

    .line 10
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    invoke-virtual {v0}, Lcom/android/systemui/BootCompleteCacheImpl;->setBootComplete()V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {v0}, Lcom/android/systemui/dagger/SysUIComponent;->createDumpManager()Lcom/android/systemui/dump/DumpManager;

    move-result-object v0

    .line 13
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 14
    new-instance v3, Landroid/util/TimingsTraceLog;

    const-string v4, "SystemUIBootTiming"

    const-wide/16 v5, 0x1000

    invoke-direct {v3, v4, v5, v6}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 15
    invoke-virtual {v3, p1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v4, v2

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 18
    new-instance v7, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v4, v6, v5}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/SystemUIApplication;ILjava/lang/String;Ljava/util/Map$Entry;)V

    invoke-static {v6, v7, v3, p1}, Lcom/android/systemui/SystemUIApplication;->timeInitialization(Ljava/lang/String;Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;Ljava/lang/String;)V

    add-int/2addr v4, v1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 19
    new-instance p3, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/SystemUIApplication;Ljava/lang/String;)V

    invoke-static {p2, p3, v3, p1}, Lcom/android/systemui/SystemUIApplication;->timeInitialization(Ljava/lang/String;Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;Ljava/lang/String;)V

    :cond_4
    move p1, v2

    .line 20
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    array-length p2, p2

    if-ge p1, p2, :cond_6

    .line 21
    iget-object p2, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCacheImpl;

    invoke-virtual {p2}, Lcom/android/systemui/BootCompleteCacheImpl;->isBootComplete()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 22
    iget-object p2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    aget-object p2, p2, p1

    invoke-static {p2}, Lcom/android/systemui/SystemUIApplication;->notifyBootCompleted(Lcom/android/systemui/CoreStartable;)V

    .line 23
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    aget-object p3, p3, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {p1}, Lcom/android/systemui/dagger/SysUIComponent;->getInitController()Lcom/android/systemui/InitController;

    move-result-object p1

    .line 25
    :goto_3
    iget-object p2, p1, Lcom/android/systemui/InitController;->mTasks:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    .line 27
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 28
    :cond_7
    iput-boolean v1, p1, Lcom/android/systemui/InitController;->mTasksExecuted:Z

    .line 29
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 30
    iput-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return-void
.end method
