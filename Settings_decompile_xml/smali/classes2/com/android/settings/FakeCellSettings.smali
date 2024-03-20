.class public Lcom/android/settings/FakeCellSettings;
.super Ljava/lang/Object;
.source "FakeCellSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static supportDetectFakecell()Z
    .locals 3

    .line 23
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_4

    const-string/jumbo v0, "vendor"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "qcom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 29
    :cond_1
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->isPlatform8550()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 30
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->isPlatform8650()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 33
    :cond_2
    invoke-static {}, Lcom/android/settings/FakeCellSettings;->supportFakecellRilHookNV()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 36
    :cond_3
    invoke-static {}, Lcom/android/settings/FakeCellSettings;->supportFakecellNativeNV()Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private static supportFakecellNativeNV()Z
    .locals 6

    const/4 v0, 0x0

    .line 45
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "nvReadItem"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 47
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string v4, "getDefault"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x1ac6

    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x3b

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    shr-int/2addr v1, v3

    and-int/lit8 v1, v1, 0x3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    return v3

    :catch_0
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return v0
.end method

.method private static supportFakecellRilHookNV()Z
    .locals 2

    const-string/jumbo v0, "persist.radio.support.fakecell"

    const/4 v1, 0x0

    .line 70
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
