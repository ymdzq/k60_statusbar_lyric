.class public final Lcom/android/systemui/controls/management/ControlsRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    const-string p0, "android.service.controls.extra.CONTROL"

    .line 2
    const-string v0, "android.intent.extra.COMPONENT_NAME"

    .line 4
    const-string v1, "ControlsRequestReceiver"

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v2

    .line 11
    const-string v3, "android.software.controls"

    .line 12
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 14
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 25
    :try_start_1
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 27
    move-result-object p2

    .line 30
    check-cast p2, Landroid/service/controls/Control;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_0
    if-eqz v3, :cond_5

    .line 41
    const/4 v4, 0x0

    .line 43
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    move-result-object v5

    .line 47
    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 48
    move-result v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    const-class v5, Landroid/app/ActivityManager;

    .line 52
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v5

    .line 57
    check-cast v5, Landroid/app/ActivityManager;

    .line 58
    if-eqz v5, :cond_2

    .line 60
    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getUidImportance(I)I

    .line 62
    move-result v5

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/16 v5, 0x3e8

    .line 67
    :goto_1
    const/16 v6, 0x64

    .line 69
    if-eq v5, v6, :cond_3

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    const-string v6, "Uid "

    .line 75
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v3, " not in foreground"

    .line 83
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 91
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto :goto_2

    .line 95
    :cond_3
    const/4 v4, 0x1

    .line 96
    goto :goto_2

    .line 97
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 98
    const-string v6, "Package "

    .line 100
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v3, " not found"

    .line 108
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 116
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_2
    if-nez v4, :cond_4

    .line 120
    goto :goto_3

    .line 122
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 123
    const-class v3, Lcom/android/systemui/controls/management/ControlsRequestDialog;

    .line 125
    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    const/high16 p0, 0x10020000

    .line 136
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    const-string p0, "android.intent.extra.USER_ID"

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 143
    move-result p2

    .line 146
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 150
    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 152
    :cond_5
    :goto_3
    return-void

    .line 155
    :catch_1
    move-exception p0

    .line 156
    const-string p1, "Malformed intent extra Control"

    .line 157
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    return-void

    .line 162
    :catch_2
    move-exception p0

    .line 163
    const-string p1, "Malformed intent extra ComponentName"

    .line 164
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    return-void
    .line 169
.end method
