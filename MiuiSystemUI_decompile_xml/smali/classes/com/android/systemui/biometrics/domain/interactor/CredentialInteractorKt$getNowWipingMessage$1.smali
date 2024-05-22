.class public final Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_getNowWipingMessage:Landroid/content/Context;

.field public final synthetic $userType:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;->$userType:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;->$this_getNowWipingMessage:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;->$userType:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/domain/interactor/UserType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f130411    # @string/failed_attempts_now_wiping_user 'Too many incorrect attempts. This user will be deleted.'

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const v0, 0x7f130410    # @string/failed_attempts_now_wiping_profile 'Too many incorrect attempts. This work profile and its data will be deleted.'

    goto :goto_0

    :cond_2
    const v0, 0x7f13040e    # @string/failed_attempts_now_wiping_device 'Too many incorrect attempts. This device's data will be deleted.'

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;->$this_getNowWipingMessage:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;->$userType:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    .line 7
    instance-of v1, v0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pin;

    if-eqz v1, :cond_3

    const v0, 0x7f130197    # @string/biometric_dialog_last_pin_attempt_before_wipe_profile 'If you enter an incorrect PIN on the next attempt, your work profile and its data will be deleted.'

    goto :goto_2

    .line 8
    :cond_3
    instance-of v1, v0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;

    if-eqz v1, :cond_4

    const v0, 0x7f130194    # @string/biometric_dialog_last_pattern_attempt_before_wipe_profile 'If you enter an incorrect pattern on the next attempt, your work profile and its data will be delete ...'

    goto :goto_2

    .line 9
    :cond_4
    instance-of v0, v0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;

    if-eqz v0, :cond_5

    const v0, 0x7f130191    # @string/biometric_dialog_last_password_attempt_before_wipe_profile 'If you enter an incorrect password on the next attempt, your work profile and its data will be delet ...'

    .line 10
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;->$this_getNowWipingMessage:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
