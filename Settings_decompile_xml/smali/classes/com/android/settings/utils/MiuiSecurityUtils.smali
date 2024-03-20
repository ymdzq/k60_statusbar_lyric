.class public Lcom/android/settings/utils/MiuiSecurityUtils;
.super Ljava/lang/Object;
.source "MiuiSecurityUtils.java"


# direct methods
.method private static getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 3

    const-string v0, "device_policy"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stack trace:"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "MiuiSecurityUtils"

    const-string v2, "Can\'t get DevicePolicyManagerService: is it running?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p0
.end method

.method public static getRequestedMinimumPasswordLength(Landroid/content/Context;I)I
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/android/settings/utils/MiuiSecurityUtils;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public static getRequestedPasswordMinimumLetters(Landroid/content/Context;I)I
    .locals 1

    .line 23
    invoke-static {p0}, Lcom/android/settings/utils/MiuiSecurityUtils;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public static getRequestedPasswordMinimumLowerCase(Landroid/content/Context;I)I
    .locals 1

    .line 31
    invoke-static {p0}, Lcom/android/settings/utils/MiuiSecurityUtils;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public static getRequestedPasswordMinimumNonLetter(Landroid/content/Context;I)I
    .locals 1

    .line 43
    invoke-static {p0}, Lcom/android/settings/utils/MiuiSecurityUtils;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public static getRequestedPasswordMinimumNumeric(Landroid/content/Context;I)I
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/android/settings/utils/MiuiSecurityUtils;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public static getRequestedPasswordMinimumSymbols(Landroid/content/Context;I)I
    .locals 1

    .line 39
    invoke-static {p0}, Lcom/android/settings/utils/MiuiSecurityUtils;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public static getRequestedPasswordMinimumUpperCase(Landroid/content/Context;I)I
    .locals 1

    .line 27
    invoke-static {p0}, Lcom/android/settings/utils/MiuiSecurityUtils;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public static getRequestedPasswordQuality(Landroid/content/Context;I)I
    .locals 1

    .line 15
    invoke-static {p0}, Lcom/android/settings/utils/MiuiSecurityUtils;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method
