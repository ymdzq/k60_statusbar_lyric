.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;


# instance fields
.field public final carrierNetworkChange:Z

.field public final level:I

.field public final numberOfLevels:I

.field public final showExclamationMark:Z


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->level:I

    .line 5
    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->numberOfLevels:I

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->showExclamationMark:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->carrierNetworkChange:Z

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;

    .line 12
    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->level:I

    .line 14
    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->level:I

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->numberOfLevels:I

    .line 21
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->numberOfLevels:I

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->showExclamationMark:Z

    .line 28
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->showExclamationMark:Z

    .line 30
    if-eq v1, v3, :cond_4

    .line 32
    return v2

    .line 34
    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->carrierNetworkChange:Z

    .line 35
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->carrierNetworkChange:Z

    .line 37
    if-eq p0, p1, :cond_5

    .line 39
    return v2

    .line 41
    :cond_5
    return v0
    .line 42
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->level:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->numberOfLevels:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->showExclamationMark:Z

    .line 19
    if-eqz v2, :cond_0

    .line 21
    move v2, v1

    .line 23
    :cond_0
    add-int/2addr v0, v2

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->carrierNetworkChange:Z

    .line 27
    if-eqz p0, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    move v1, p0

    .line 32
    :goto_0
    add-int/2addr v0, v1

    .line 33
    return v0
    .line 34
.end method

.method public final logDiffs(Lcom/android/systemui/log/table/Diffable;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;

    .line 2
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->level:I

    .line 4
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->level:I

    .line 6
    if-eq v0, v1, :cond_0

    .line 8
    const-string v0, "level"

    .line 10
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 12
    :cond_0
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->numberOfLevels:I

    .line 15
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->numberOfLevels:I

    .line 17
    if-eq v0, v1, :cond_1

    .line 19
    const-string v0, "numLevels"

    .line 21
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 23
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->showExclamationMark:Z

    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->showExclamationMark:Z

    .line 28
    if-eq v0, v1, :cond_2

    .line 30
    const-string/jumbo v0, "showExclamation"

    .line 32
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 35
    :cond_2
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->carrierNetworkChange:Z

    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->carrierNetworkChange:Z

    .line 40
    if-eq p1, p0, :cond_3

    .line 42
    const-string p1, "carrierNetworkChange"

    .line 44
    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 46
    :cond_3
    return-void
    .line 49
.end method

.method public final logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    .line 1
    const-string v0, "level"

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->level:I

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 6
    const-string v0, "numLevels"

    .line 9
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->numberOfLevels:I

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 13
    const-string/jumbo v0, "showExclamation"

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->showExclamationMark:Z

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 21
    const-string v0, "carrierNetworkChange"

    .line 24
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->carrierNetworkChange:Z

    .line 26
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 28
    return-void
    .line 31
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "SignalIconModel(level="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->level:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", numberOfLevels="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->numberOfLevels:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", showExclamationMark="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->showExclamationMark:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", carrierNetworkChange="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/SignalIconModel;->carrierNetworkChange:Z

    .line 39
    const-string v1, ")"

    .line 41
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    return-object p0
    .line 47
.end method
