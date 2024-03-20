.class public final Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;
.super Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final stealthMode:Z


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;-><init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;)V

    .line 2
    iput-boolean p4, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;->stealthMode:Z

    .line 5
    return-void
    .line 7
.end method
