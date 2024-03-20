.class public Lcom/android/settings/tofgesture/util/TofGestureAppItem;
.super Ljava/lang/Object;
.source "TofGestureAppItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/tofgesture/util/TofGestureAppItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mEnable:Z

.field private mPkgName:Ljava/lang/String;

.field private mSupportSceneDes:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/tof/gesture/TofGestureAppDetailInfo;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/miui/tof/gesture/TofGestureAppDetailInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->mPkgName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/miui/tof/gesture/TofGestureAppDetailInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->mAppName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/miui/tof/gesture/TofGestureAppDetailInfo;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->mEnable:Z

    .line 15
    invoke-virtual {p1}, Lcom/miui/tof/gesture/TofGestureAppDetailInfo;->getSupportSceneDes()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->mSupportSceneDes:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/tofgesture/util/TofGestureAppItem;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/android/settings/tofgesture/util/TofGestureAppItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->compareTo(Lcom/android/settings/tofgesture/util/TofGestureAppItem;)I

    move-result p0

    return p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportSceneDes()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->mSupportSceneDes:Ljava/lang/String;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->mEnable:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AirGestureAppItem{appName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkgName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->mEnable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
