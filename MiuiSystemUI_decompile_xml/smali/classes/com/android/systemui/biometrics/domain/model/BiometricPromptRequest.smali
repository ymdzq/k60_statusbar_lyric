.class public abstract Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final description:Ljava/lang/String;

.field public final operationInfo:Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final userInfo:Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->title:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->subtitle:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->description:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->userInfo:Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->operationInfo:Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    .line 13
    return-void
    .line 15
.end method
