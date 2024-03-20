.class public final Lcom/android/systemui/qs/MiTileOptimizer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z

.field public static final ENABLE_PROP:Z

.field public static volatile mInstance:Lcom/android/systemui/qs/MiTileOptimizer;

.field public static final sBindServiceProcessWhiteList:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "debug.systemui.mitileopt_debug"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/qs/MiTileOptimizer;->DEBUG:Z

    .line 9
    const-string/jumbo v0, "ro.miui.build.region"

    .line 11
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    const-string v2, "cn"

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "persist.sys.systemui.mitileopt_enable"

    .line 27
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    move-result v1

    .line 32
    :goto_0
    sput-boolean v1, Lcom/android/systemui/qs/MiTileOptimizer;->ENABLE_PROP:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    sput-object v0, Lcom/android/systemui/qs/MiTileOptimizer;->sBindServiceProcessWhiteList:Ljava/util/ArrayList;

    .line 40
    const-string v1, "com.miui.mishare.connectivity"

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "com.miui.securitycenter"

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v1, "com.android.traceur"

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "android.quicksettings.cts"

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
    .line 62
.end method

.method public static tileNeedOpt(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/MiTileOptimizer;->ENABLE_PROP:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object v0

    .line 13
    const-string v2, "POWER_SAVE_MODE_OPEN"

    .line 14
    const/4 v3, -0x2

    .line 16
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    move-result v0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    move v0, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    if-nez v0, :cond_1

    .line 27
    goto :goto_2

    .line 29
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object p0

    .line 36
    const-string v0, "MILLET_NO_RESTRICT_APP"

    .line 37
    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    sget-boolean v0, Lcom/android/systemui/qs/MiTileOptimizer;->DEBUG:Z

    .line 43
    if-eqz v0, :cond_2

    .line 45
    const-string v0, "getNoRestrictApps result="

    .line 47
    const-string v3, "MiTileOptimizer"

    .line 49
    invoke-static {v0, p0, v3}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2
    if-eqz p0, :cond_3

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 56
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    :cond_3
    const/4 p0, 0x0

    .line 62
    :cond_4
    sget-object v0, Lcom/android/systemui/qs/MiTileOptimizer;->sBindServiceProcessWhiteList:Ljava/util/ArrayList;

    .line 63
    monitor-enter v0

    .line 65
    if-eqz p0, :cond_5

    .line 66
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result v3

    .line 71
    if-nez v3, :cond_6

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    move-result p0

    .line 77
    if-nez p0, :cond_6

    .line 78
    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    move-result p0

    .line 84
    if-nez p0, :cond_6

    .line 85
    :goto_1
    move v1, v2

    .line 87
    :cond_6
    monitor-exit v0

    .line 88
    return v1

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p0

    .line 92
    :cond_7
    :goto_2
    return v1
    .line 93
.end method
