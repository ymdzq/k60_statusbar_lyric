.class public Lcom/android/systemui/plugins/qs/QSTile$TrafficState;
.super Lcom/android/systemui/plugins/qs/QSTile$SignalState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public warning:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 7
    return-object v0
    .line 10
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;->warning:Z

    .line 5
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;->warning:Z

    .line 7
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    move v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v4

    .line 15
    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;->warning:Z

    .line 16
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 18
    move-result p0

    .line 21
    if-nez p0, :cond_2

    .line 22
    if-eqz v1, :cond_1

    .line 24
    goto :goto_1

    .line 26
    :cond_1
    move v3, v4

    .line 27
    :cond_2
    :goto_1
    return v3
    .line 28
.end method

.method public toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->toStringBuilder()Ljava/lang/StringBuilder;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 6
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    const-string v3, ",warning="

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;->warning:Z

    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    return-object v0
    .line 31
.end method
