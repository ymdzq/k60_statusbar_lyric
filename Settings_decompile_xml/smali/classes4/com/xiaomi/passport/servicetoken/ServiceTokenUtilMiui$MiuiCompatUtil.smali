.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;
.super Ljava/lang/Object;
.source "ServiceTokenUtilMiui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiCompatUtil"
.end annotation


# static fields
.field private static volatile cachedParcelIssueCheckResult:Ljava/lang/Boolean;

.field private static volatile cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method static hasServiceTokenResultParcelCompatIssue()Z
    .locals 5

    .line 235
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedParcelIssueCheckResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedParcelIssueCheckResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 240
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/MiuiOsBuildReflection;->isStable(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;-><init>(II)V

    .line 241
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;->earlyThan(Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    .line 243
    :cond_1
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/MiuiOsBuildReflection;->isDevButNotAlpha(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;-><init>(III)V

    .line 244
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->earlyThan(Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 250
    :cond_2
    :goto_1
    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedParcelIssueCheckResult:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 253
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedParcelIssueCheckResult:Ljava/lang/Boolean;

    .line 256
    :cond_3
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedParcelIssueCheckResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static hasWebLoginCompatIssue()Z
    .locals 6

    .line 262
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 267
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/MiuiOsBuildReflection;->isStable(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;

    const/16 v3, 0x8

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;-><init>(II)V

    .line 268
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;->earlyThan(Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    .line 270
    :cond_1
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/MiuiOsBuildReflection;->isDevButNotAlpha(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    const/16 v3, 0xb

    const/16 v4, 0x19

    const/4 v5, 0x6

    invoke-direct {v1, v5, v3, v4}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;-><init>(III)V

    .line 271
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->earlyThan(Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 277
    :cond_2
    :goto_1
    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 280
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;

    .line 283
    :cond_3
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->cachedWebLoginIssueCheckResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
