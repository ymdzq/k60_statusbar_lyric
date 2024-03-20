.class public abstract Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInstanceId()Lcom/android/internal/logging/InstanceId;
.end method

.method public abstract getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;
.end method

.method public getTimeoutMs()I
    .locals 0

    .line 1
    const/16 p0, 0x2710

    .line 2
    return p0
    .line 4
.end method

.method public abstract getWakeReason()Ljava/lang/String;
.end method

.method public abstract getWindowTitle()Ljava/lang/String;
.end method
