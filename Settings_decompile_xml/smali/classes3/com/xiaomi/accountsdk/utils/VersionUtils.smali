.class public Lcom/xiaomi/accountsdk/utils/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# static fields
.field public static versionValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "01"

    const-string v2, "09"

    const-string v3, "2020"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "accountsdk-%s.%s.%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/VersionUtils;->versionValue:Ljava/lang/String;

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaomi/accountsdk/utils/VersionUtils;->versionValue:Ljava/lang/String;

    return-object v0
.end method
