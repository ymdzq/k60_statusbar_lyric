.class public abstract Lcom/xiaomi/onetrack/util/u;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final c:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "ro.miui.cust_variant"

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    .line 4
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6
    sput-object v1, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 9
    const-string v2, "android"

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v2, "com.miui.analytics"

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v2, "com.miui.cit"

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v2, "com.xiaomi.finddevice"

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v2, "com.miui.securitycenter"

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v2, "com.android.settings"

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v2, "com.android.vending"

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v2, "com.google.android.gms"

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v2, "com.xiaomi.factory.mmi"

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v2, "com.miui.qr"

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v2, "com.android.contacts"

    .line 61
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v2, "com.qualcomm.qti.autoregistration"

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v2, "com.miui.tsmclient"

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v2, "com.miui.sekeytool"

    .line 76
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v2, "com.android.updater"

    .line 81
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v2, "cn_chinamobile"

    .line 86
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v2

    .line 95
    if-nez v2, :cond_0

    .line 96
    const-string v2, "cn_chinatelecom"

    .line 98
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    :cond_0
    const-string v0, "com.mobiletools.systemhelper"

    .line 110
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v0, "com.miui.dmregservice"

    .line 115
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v2, "static initializer: "

    .line 124
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v2, "PermissionUtil"

    .line 130
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 132
    :cond_1
    :goto_0
    return-void
    .line 135
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    move-result v1

    .line 9
    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 10
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 12
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method
