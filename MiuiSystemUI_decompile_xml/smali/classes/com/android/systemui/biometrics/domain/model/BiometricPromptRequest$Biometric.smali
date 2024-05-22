.class public final Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;
.super Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final modalities:Lcom/android/systemui/biometrics/domain/model/BiometricModalities;

.field public final negativeButtonText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;Lcom/android/systemui/biometrics/domain/model/BiometricModalities;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move-object v3, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move-object v3, v1

    .line 19
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    .line 20
    move-result-object v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    goto :goto_2

    .line 32
    :cond_2
    move-object v4, v0

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    :goto_2
    move-object v4, v1

    .line 35
    :goto_3
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    .line 36
    move-result-object v0

    .line 39
    if-eqz v0, :cond_5

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    goto :goto_4

    .line 48
    :cond_4
    move-object v5, v0

    .line 49
    goto :goto_5

    .line 50
    :cond_5
    :goto_4
    move-object v5, v1

    .line 51
    :goto_5
    move-object v2, p0

    .line 52
    move-object v6, p2

    .line 53
    move-object v7, p3

    .line 54
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;)V

    .line 55
    iput-object p4, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->modalities:Lcom/android/systemui/biometrics/domain/model/BiometricModalities;

    .line 58
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    .line 60
    move-result-object p1

    .line 63
    if-eqz p1, :cond_7

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 69
    if-nez p1, :cond_6

    .line 70
    goto :goto_6

    .line 72
    :cond_6
    move-object v1, p1

    .line 73
    :cond_7
    :goto_6
    iput-object v1, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;->negativeButtonText:Ljava/lang/String;

    .line 74
    return-void
    .line 76
.end method
