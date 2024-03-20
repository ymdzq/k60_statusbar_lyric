.class public final Lcom/android/systemui/controlcenter/policy/SltController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final URI_SLT_STATE:Landroid/net/Uri;


# instance fields
.field public final context:Landroid/content/Context;

.field public final listeners:Landroid/util/ArraySet;

.field public sltEnabled:Z

.field public final sltObserver:Lcom/android/systemui/controlcenter/policy/SltController$sltObserver$1;

.field public final uiHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "satellite_state"

    .line 2
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/systemui/controlcenter/policy/SltController;->URI_SLT_STATE:Landroid/net/Uri;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/SltController;->context:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/SltController;->uiHandler:Landroid/os/Handler;

    .line 7
    new-instance p3, Landroid/util/ArraySet;

    .line 9
    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 11
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/SltController;->listeners:Landroid/util/ArraySet;

    .line 14
    new-instance p3, Lcom/android/systemui/controlcenter/policy/SltController$sltObserver$1;

    .line 16
    invoke-direct {p3, p0, p2}, Lcom/android/systemui/controlcenter/policy/SltController$sltObserver$1;-><init>(Lcom/android/systemui/controlcenter/policy/SltController;Landroid/os/Handler;)V

    .line 18
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/SltController;->sltObserver:Lcom/android/systemui/controlcenter/policy/SltController$sltObserver$1;

    .line 21
    invoke-virtual {p4, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object p0

    .line 29
    sget-object p1, Lcom/android/systemui/controlcenter/policy/SltController;->URI_SLT_STATE:Landroid/net/Uri;

    .line 30
    const/4 p2, 0x0

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 33
    invoke-virtual {p3, p2}, Lcom/android/systemui/controlcenter/policy/SltController$sltObserver$1;->onChange(Z)V

    .line 36
    return-void
    .line 39
.end method

.method public static getSltAvailable()Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->isSupportSatelliteByCarrier()Z

    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    const-string v1, "SltController"

    .line 12
    const-string v2, "get Tile state error "

    .line 14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
    .line 20
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/controlcenter/policy/SltController$SltListener;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/SltController;->listeners:Landroid/util/ArraySet;

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/SltController;->sltEnabled:Z

    .line 9
    invoke-interface {p1, p0}, Lcom/android/systemui/controlcenter/policy/SltController$SltListener;->onSltChanged(Z)V

    .line 11
    return-void
    .line 14
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "SltController state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    .line 7
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lmiui/telephony/TelephonyManagerEx;->isSupportSatelliteByDevice()Z

    .line 11
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p2

    .line 16
    const-string v0, "SltController"

    .line 17
    const-string v1, "Don\'t know if the device supports it "

    .line 19
    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    const/4 p2, 0x0

    .line 24
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo v1, "sltSupportedByDevice= "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/android/systemui/controlcenter/policy/SltController;->getSltAvailable()Z

    .line 43
    move-result p2

    .line 46
    const-string/jumbo v0, "sltTileAvailable= "

    .line 47
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 50
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/SltController;->sltEnabled:Z

    .line 53
    const-string/jumbo p2, "sltEnabled= "

    .line 55
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 58
    return-void
    .line 61
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/controlcenter/policy/SltController$SltListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SltController;->listeners:Landroid/util/ArraySet;

    .line 4
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final setSltEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/SltController;->sltEnabled:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/SltController;->sltEnabled:Z

    .line 7
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/SltController;->listeners:Landroid/util/ArraySet;

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/systemui/controlcenter/policy/SltController$SltListener;

    .line 25
    iget-boolean v1, p0, Lcom/android/systemui/controlcenter/policy/SltController;->sltEnabled:Z

    .line 27
    invoke-interface {v0, v1}, Lcom/android/systemui/controlcenter/policy/SltController$SltListener;->onSltChanged(Z)V

    .line 29
    goto :goto_0

    .line 32
    :cond_1
    return-void
    .line 33
.end method
