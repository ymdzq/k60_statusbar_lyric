.class public abstract Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final allowedObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

.field public final context:Landroid/content/Context;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public isDemoModeAvailable:Z

.field public isInDemoMode:Z

.field public final onObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 7
    const-string/jumbo p1, "sysui_tuner_demo_on"

    .line 9
    const/4 v0, 0x0

    .line 12
    invoke-interface {p2, p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    .line 13
    move-result p1

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    move p1, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p1, v0

    .line 22
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    .line 23
    const-string/jumbo p1, "sysui_demo_allowed"

    .line 25
    invoke-interface {p2, p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    move p1, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move p1, v0

    .line 36
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isDemoModeAvailable:Z

    .line 37
    new-instance p1, Landroid/os/Handler;

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 41
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    new-instance p2, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

    .line 48
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;-><init>(Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;Landroid/os/Handler;I)V

    .line 50
    iput-object p2, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->allowedObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

    .line 53
    new-instance p1, Landroid/os/Handler;

    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 57
    move-result-object p2

    .line 60
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    new-instance p2, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

    .line 64
    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;-><init>(Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;Landroid/os/Handler;I)V

    .line 66
    iput-object p2, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->onObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

    .line 69
    return-void
    .line 71
.end method


# virtual methods
.method public abstract onDemoModeAvailabilityChanged()V
.end method

.method public abstract onDemoModeFinished()V
.end method

.method public abstract onDemoModeStarted()V
.end method

.method public final startTracking()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 8
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const-string/jumbo v2, "sysui_demo_allowed"

    .line 16
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->allowedObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

    .line 23
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 26
    check-cast v1, Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    const-string/jumbo v1, "sysui_tuner_demo_on"

    .line 34
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    move-result-object v1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->onObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

    .line 41
    invoke-virtual {v0, v1, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    return-void
    .line 46
.end method
