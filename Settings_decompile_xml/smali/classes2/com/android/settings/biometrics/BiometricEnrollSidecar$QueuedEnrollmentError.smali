.class Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;
.source "BiometricEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuedEnrollmentError"
.end annotation


# instance fields
.field errMsgId:I

.field errString:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/biometrics/BiometricEnrollSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 1

    .line 105
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;->this$0:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent-IA;)V

    .line 106
    iput p2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;->errMsgId:I

    .line 107
    iput-object p3, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;->errString:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public send(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;->errMsgId:I

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;->errString:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method
