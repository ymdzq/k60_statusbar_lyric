.class public Lcom/android/settings/display/DarkModeAppInfo;
.super Ljava/lang/Object;
.source "DarkModeAppInfo.java"


# instance fields
.field private enabled:Z

.field private label:Ljava/lang/String;

.field private lastTimeUsed:J

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/darkmode/DarkModeAppDetailInfo;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/miui/darkmode/DarkModeAppDetailInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/DarkModeAppInfo;->pkgName:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/miui/darkmode/DarkModeAppDetailInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/DarkModeAppInfo;->label:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/miui/darkmode/DarkModeAppDetailInfo;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/display/DarkModeAppInfo;->enabled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 51
    instance-of v0, p1, Lcom/android/settings/display/DarkModeAppInfo;

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/android/settings/display/DarkModeAppInfo;->pkgName:Ljava/lang/String;

    check-cast p1, Lcom/android/settings/display/DarkModeAppInfo;

    invoke-virtual {p1}, Lcom/android/settings/display/DarkModeAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/settings/display/DarkModeAppInfo;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getLastTimeUsed()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/android/settings/display/DarkModeAppInfo;->lastTimeUsed:J

    return-wide v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/display/DarkModeAppInfo;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/settings/display/DarkModeAppInfo;->enabled:Z

    return p0
.end method

.method public setLastTimeUsed(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/android/settings/display/DarkModeAppInfo;->lastTimeUsed:J

    return-void
.end method
