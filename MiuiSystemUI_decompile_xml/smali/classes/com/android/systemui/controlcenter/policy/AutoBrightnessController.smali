.class public final Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final autoBrightnessAvailable:Z

.field public final autoBrightnessObserver:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;

.field public final bgHandler:Landroid/os/Handler;

.field public blockedByVirtualSensor:Z

.field public final callbacks:Ljava/util/ArrayList;

.field public final context:Landroid/content/Context;

.field public final displayService:Landroid/os/IBinder;

.field public enabled:Z

.field public final hostExt:Lcom/android/systemui/qs/QSTileHostExt;

.field public final uiHandler:Landroid/os/Handler;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$userTrackerCallback$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/qs/QSTileHostExt;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->bgHandler:Landroid/os/Handler;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->uiHandler:Landroid/os/Handler;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->hostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p3

    .line 16
    const p4, 0x11050001

    .line 17
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 20
    move-result p3

    .line 23
    iput-boolean p3, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->autoBrightnessAvailable:Z

    .line 24
    new-instance p3, Ljava/util/ArrayList;

    .line 26
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->callbacks:Ljava/util/ArrayList;

    .line 31
    const-string p3, "display"

    .line 33
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 35
    move-result-object p3

    .line 38
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->displayService:Landroid/os/IBinder;

    .line 39
    const-class p3, Lcom/android/systemui/settings/UserTracker;

    .line 41
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object p3

    .line 46
    check-cast p3, Lcom/android/systemui/settings/UserTracker;

    .line 47
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 49
    new-instance p3, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$userTrackerCallback$1;

    .line 51
    invoke-direct {p3, p0}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$userTrackerCallback$1;-><init>(Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;)V

    .line 53
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->userTrackerCallback:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$userTrackerCallback$1;

    .line 56
    new-instance p3, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;

    .line 58
    const/4 p4, 0x1

    .line 60
    invoke-direct {p3, p0, p2, p4}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;-><init>(Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;Landroid/os/Handler;I)V

    .line 61
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->autoBrightnessObserver:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;

    .line 64
    new-instance p3, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;

    .line 66
    const/4 p4, 0x0

    .line 68
    invoke-direct {p3, p0, p2, p4}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;-><init>(Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;Landroid/os/Handler;I)V

    .line 69
    sget-object p2, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 72
    const-string v0, "AutoBrightnessController"

    .line 74
    invoke-virtual {p5, v0, p0, p2}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 76
    sget-boolean p0, Lcom/android/systemui/controlcenter/utils/Constants;->IS_SLV_DEVICE:Z

    .line 79
    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    move-result-object p0

    .line 86
    const-string p1, "face_unlcok_apply_for_lock"

    .line 87
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1, p4, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 93
    invoke-virtual {p3, p4}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;->onChange(Z)V

    .line 96
    :cond_0
    return-void
    .line 99
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$callback$1;

    .line 2
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->ensureMainThread()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->callbacks:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->autoBrightnessAvailable:Z

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result p1

    .line 19
    const/4 v0, 0x1

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->setListening(Z)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->userTrackerCallback:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$userTrackerCallback$1;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->context:Landroid/content/Context;

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 30
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 34
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 36
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->updateAutoBrightness()V

    .line 41
    :cond_0
    return-void
    .line 44
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Landroid/util/IndentingPrintWriter;

    .line 2
    const-string v0, "  "

    .line 4
    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    const-string p1, "AutoBrightnessController:"

    .line 9
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "autoBrightnessAvailable: "

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->autoBrightnessAvailable:Z

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->enabled:Z

    .line 36
    const-string p1, "autoBrightnessEnabled: "

    .line 38
    invoke-static {p1, p0, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 40
    sget-boolean p0, Lcom/android/systemui/controlcenter/utils/Constants;->IS_SLV_DEVICE:Z

    .line 43
    const-string p1, "isSLVDevice: "

    .line 45
    invoke-static {p1, p0, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 47
    return-void
    .line 50
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$callback$1;

    .line 2
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->ensureMainThread()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->callbacks:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->autoBrightnessAvailable:Z

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->userTrackerCallback:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$userTrackerCallback$1;

    .line 22
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 24
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 26
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 28
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->setListening(Z)V

    .line 32
    :cond_0
    return-void
    .line 35
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->ensureMainThread()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->enabled:Z

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->enabled:Z

    .line 10
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->ensureMainThread()V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->callbacks:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 30
    check-cast p1, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$callback$1;

    .line 31
    const/4 v0, 0x0

    .line 33
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$callback$1;->this$0:Lcom/android/systemui/qs/tiles/AutoBrightnessTile;

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    return-void
    .line 40
.end method

.method public final setListening(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->autoBrightnessObserver:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$faceUnlockObserver$1;

    .line 8
    if-eqz p1, :cond_1

    .line 10
    sget-boolean p1, Lmiui/os/DeviceFeature;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    .line 12
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 14
    const/4 v2, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    const-string/jumbo p1, "screen_brightness"

    .line 19
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    move-result-object p1

    .line 25
    move-object v3, p0

    .line 26
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 27
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 29
    move-result v3

    .line 32
    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 33
    const-string/jumbo p1, "screen_auto_brightness_adj"

    .line 36
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    move-result-object p1

    .line 42
    move-object v3, p0

    .line 43
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 44
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 46
    move-result v3

    .line 49
    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 50
    :cond_0
    const-string/jumbo p1, "screen_brightness_mode"

    .line 53
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 56
    move-result-object p1

    .line 59
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 62
    move-result p0

    .line 65
    invoke-virtual {v0, p1, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 70
    :goto_0
    return-void
    .line 73
.end method

.method public final toggleAutoBrightness()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$toggleAutoBrightness$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$toggleAutoBrightness$1;-><init>(Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->uiHandler:Landroid/os/Handler;

    .line 7
    invoke-static {p0, v0}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    .line 9
    return-void
    .line 12
.end method

.method public final updateAutoBrightness()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->autoBrightnessAvailable:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->context:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 13
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 15
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 17
    move-result v2

    .line 20
    const-string/jumbo v3, "screen_brightness_mode"

    .line 21
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 24
    move-result v0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-ne v0, v2, :cond_0

    .line 29
    move v1, v2

    .line 31
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->setEnabled(Z)V

    .line 32
    return-void
    .line 35
.end method
