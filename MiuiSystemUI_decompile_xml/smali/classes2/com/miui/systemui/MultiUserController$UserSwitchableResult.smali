.class public final Lcom/miui/systemui/MultiUserController$UserSwitchableResult;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final canSwitch:Z

.field public final tipsResId:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->canSwitch:Z

    .line 5
    iput p1, p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->tipsResId:I

    .line 7
    return-void
    .line 9
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
    instance-of v1, p1, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 12
    iget-boolean v1, p1, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->canSwitch:Z

    .line 14
    iget-boolean v3, p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->canSwitch:Z

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget p0, p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->tipsResId:I

    .line 21
    iget p1, p1, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->tipsResId:I

    .line 23
    if-eq p0, p1, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    return v0
    .line 28
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->canSwitch:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget p0, p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->tipsResId:I

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 11
    move-result p0

    .line 14
    add-int/2addr p0, v0

    .line 15
    return p0
    .line 16
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "UserSwitchableResult(canSwitch="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->canSwitch:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", tipsResId="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget p0, p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->tipsResId:I

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, ")"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method
