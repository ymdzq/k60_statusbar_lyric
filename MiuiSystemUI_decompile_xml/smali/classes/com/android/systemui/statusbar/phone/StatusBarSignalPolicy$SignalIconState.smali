.class public abstract Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public contentDescription:Ljava/lang/String;

.field public slot:Ljava/lang/String;

.field public visible:Z


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-result-object v1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v2

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 18
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 20
    if-ne v1, v2, :cond_1

    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 24
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 26
    if-ne v1, v2, :cond_1

    .line 28
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    .line 30
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    .line 32
    if-ne v1, v2, :cond_1

    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 36
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 38
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    .line 46
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    .line 48
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result p0

    .line 53
    if-eqz p0, :cond_1

    .line 54
    const/4 v0, 0x1

    .line 56
    :cond_1
    :goto_0
    return v0
    .line 57
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object v1

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    .line 14
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    move-result p0

    .line 23
    return p0
.end method
