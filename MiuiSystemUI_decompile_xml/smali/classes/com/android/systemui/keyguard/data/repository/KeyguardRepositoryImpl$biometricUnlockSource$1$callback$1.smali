.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockSource$1$callback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockSource$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    .line 8
    move-result p2

    .line 11
    aget p1, p1, p2

    .line 12
    :goto_0
    const/4 p2, 0x1

    .line 14
    if-eq p1, p2, :cond_1

    .line 15
    sget-object p2, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;->FACE_SENSOR:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;

    .line 17
    const/4 p3, 0x2

    .line 19
    if-eq p1, p3, :cond_2

    .line 20
    const/4 p3, 0x3

    .line 22
    if-eq p1, p3, :cond_2

    .line 23
    const/4 p2, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    sget-object p2, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;->FINGERPRINT_SENSOR:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;

    .line 27
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$biometricUnlockSource$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 29
    invoke-interface {p0, p2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    instance-of p1, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 35
    if-eqz p1, :cond_3

    .line 37
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 39
    move-result-object p0

    .line 42
    const-string p1, "Failed to send "

    .line 43
    const-string p2, "onBiometricAuthenticated"

    .line 45
    const-string p3, " - downstream canceled or failed."

    .line 47
    const-string v0, "KeyguardRepositoryImpl"

    .line 49
    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1$callback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    :cond_3
    return-void
    .line 54
.end method
