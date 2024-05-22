.class public abstract Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
