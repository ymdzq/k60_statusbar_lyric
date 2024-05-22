.class public Lcom/android/systemui/plugins/qs/QSTile$SignalState;
.super Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public isOverlayIconWide:Z

.field public overlayIconId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 7
    return-object v0
    .line 10
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 5
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 7
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 13
    iget-boolean v5, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 15
    if-ne v1, v5, :cond_1

    .line 17
    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 19
    iget-boolean v5, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 21
    if-ne v1, v5, :cond_1

    .line 23
    iget v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    .line 25
    iget v5, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    .line 27
    if-eq v1, v5, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    move v1, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    move v1, v4

    .line 34
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 35
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 37
    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 39
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 41
    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 43
    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    .line 45
    iput v2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    .line 47
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 49
    move-result p0

    .line 52
    if-nez p0, :cond_2

    .line 53
    if-eqz v1, :cond_3

    .line 55
    :cond_2
    move v3, v4

    .line 57
    :cond_3
    return v3
    .line 58
.end method

.method public toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->toStringBuilder()Ljava/lang/StringBuilder;

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
    const-string v3, ",activityIn="

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 31
    move-result v1

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    const-string v3, ",activityOut="

    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    return-object v0
    .line 56
.end method
