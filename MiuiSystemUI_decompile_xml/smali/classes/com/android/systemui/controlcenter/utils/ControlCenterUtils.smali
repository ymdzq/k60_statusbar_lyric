.class public abstract Lcom/android/systemui/controlcenter/utils/ControlCenterUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/SystemUIApplication;->sContext:Landroid/content/Context;

    .line 2
    sput-object v0, Lcom/android/systemui/controlcenter/utils/ControlCenterUtils;->mContext:Landroid/content/Context;

    .line 4
    return-void
    .line 6
.end method

.method public static getSettingsSplitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    .line 1
    if-eqz p1, :cond_8

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 24
    const-string v3, "android.settings.SETTINGS"

    .line 25
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    return-object p1

    .line 33
    :cond_1
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 34
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x1

    .line 37
    if-nez v3, :cond_3

    .line 38
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 40
    if-eqz v3, :cond_2

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    move v3, v4

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    :goto_1
    move v3, v5

    .line 47
    :goto_2
    if-eqz v3, :cond_8

    .line 48
    if-eqz v2, :cond_4

    .line 50
    const-string v3, "android.settings"

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v2

    .line 57
    if-nez v2, :cond_5

    .line 58
    :cond_4
    const-string v2, "com.android.settings"

    .line 60
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 62
    move-result v2

    .line 65
    if-nez v2, :cond_5

    .line 66
    const-string v2, "com.android.phone"

    .line 68
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    move-result v0

    .line 73
    if-eqz v0, :cond_8

    .line 74
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 76
    move-result v0

    .line 79
    const/high16 v2, 0x10000000

    .line 80
    and-int/2addr v0, v2

    .line 82
    if-eqz v0, :cond_6

    .line 83
    move v4, v5

    .line 85
    :cond_6
    if-eqz v4, :cond_7

    .line 86
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeFlags(I)V

    .line 88
    :cond_7
    invoke-static {p0, p1, v1, v4}, Lmiui/settings/splitlib/SplitUtils;->getSettingsSplitActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    move-result-object p1

    .line 94
    :cond_8
    return-object p1
    .line 95
.end method
