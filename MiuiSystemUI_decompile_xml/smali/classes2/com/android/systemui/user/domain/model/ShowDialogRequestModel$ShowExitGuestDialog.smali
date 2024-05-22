.class public final Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;
.super Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

.field public final guestUserId:I

.field public final isGuestEphemeral:Z

.field public final isKeyguardShowing:Z

.field public final onExitGuestUser:Lkotlin/jvm/functions/Function3;

.field public final targetUserId:I


# direct methods
.method public constructor <init>(IIZZLkotlin/jvm/functions/Function3;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p6, v0}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;-><init>(Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;I)V

    .line 3
    iput p1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    .line 6
    iput p2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    .line 10
    iput-boolean p4, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    .line 12
    iput-object p5, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    .line 14
    iput-object p6, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 16
    return-void
    .line 18
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
    instance-of v1, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    .line 12
    iget v1, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    .line 14
    iget v3, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    .line 21
    iget v3, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    .line 28
    iget-boolean v3, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    .line 30
    if-eq v1, v3, :cond_4

    .line 32
    return v2

    .line 34
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    .line 35
    iget-boolean v3, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    .line 37
    if-eq v1, v3, :cond_5

    .line 39
    return v2

    .line 41
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    .line 42
    iget-object v3, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 49
    if-nez v1, :cond_6

    .line 50
    return v2

    .line 52
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 53
    iget-object p1, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 55
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result p0

    .line 60
    if-nez p0, :cond_7

    .line 61
    return v2

    .line 63
    :cond_7
    return v0
    .line 64
.end method

.method public final getDialogShower()Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 2
    return-object p0
    .line 4
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    iget-boolean v2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

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
    iget-boolean v2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    .line 27
    if-eqz v2, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    move v1, v2

    .line 32
    :goto_0
    add-int/2addr v0, v1

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 38
    move-result v1

    .line 41
    add-int/2addr v1, v0

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 45
    if-nez p0, :cond_2

    .line 47
    const/4 p0, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 51
    move-result p0

    .line 54
    :goto_1
    add-int/2addr v1, p0

    .line 55
    return v1
    .line 56
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ShowExitGuestDialog(guestUserId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", targetUserId="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", isGuestEphemeral="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", isKeyguardShowing="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", onExitGuestUser="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", dialogShower="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string p0, ")"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    return-object p0
    .line 73
.end method
