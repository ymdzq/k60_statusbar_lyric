.class public Lcom/android/settings/utils/OtgUtils;
.super Ljava/lang/Object;
.source "OtgUtils.java"


# direct methods
.method public static isChecked()Z
    .locals 1

    const-string v0, "cc_toggle"

    .line 50
    invoke-static {v0}, Lcom/android/settings/utils/OtgUtils;->isMiChargeValueOpen(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEnable()Z
    .locals 1

    const-string v0, "cid_status"

    .line 42
    invoke-static {v0}, Lcom/android/settings/utils/OtgUtils;->isMiChargeValueOpen(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isMiChargeValueOpen(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "OtgUtils"

    .line 21
    :try_start_0
    invoke-static {}, Lmiui/util/IMiCharge;->getInstance()Lmiui/util/IMiCharge;

    move-result-object v1

    .line 22
    invoke-virtual {v1, p0}, Lmiui/util/IMiCharge;->getMiChargePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " get value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "1"

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " get error"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupport()Z
    .locals 1

    const-string/jumbo v0, "otg_ui_support"

    .line 46
    invoke-static {v0}, Lcom/android/settings/utils/OtgUtils;->isMiChargeValueOpen(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setCheck(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v0, "cc_toggle"

    .line 54
    invoke-static {v0, p0}, Lcom/android/settings/utils/OtgUtils;->setMiChargeValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setMiChargeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "OtgUtils"

    .line 33
    :try_start_0
    invoke-static {}, Lmiui/util/IMiCharge;->getInstance()Lmiui/util/IMiCharge;

    move-result-object v1

    .line 34
    invoke-virtual {v1, p0, p1}, Lmiui/util/IMiCharge;->setMiChargePath(Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " set value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " get error"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
