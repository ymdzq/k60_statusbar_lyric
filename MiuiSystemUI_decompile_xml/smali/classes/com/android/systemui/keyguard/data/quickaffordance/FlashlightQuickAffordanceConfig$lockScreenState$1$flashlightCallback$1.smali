.class public final Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$lockScreenState$1$flashlightCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$lockScreenState$1$flashlightCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$lockScreenState$1$flashlightCallback$1;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onFlashlightAvailabilityChanged(Z)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Hidden;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Hidden;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$lockScreenState$1$flashlightCallback$1;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;

    .line 7
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 9
    check-cast p1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->isEnabled()Z

    .line 13
    move-result p1

    .line 16
    const/4 v0, 0x4

    .line 17
    const/4 v1, 0x0

    .line 18
    const v2, 0x7f1309b0    # @string/quick_settings_flashlight_label 'Flashlight'

    .line 19
    if-eqz p1, :cond_1

    .line 22
    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    .line 24
    new-instance v3, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 26
    new-instance v4, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 28
    invoke-direct {v4, v2}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 30
    const v2, 0x7f081753    # @drawable/qs_flashlight_icon_on 'res/drawable/qs_flashlight_icon_on.xml'

    .line 33
    invoke-direct {v3, v2, v4}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 36
    sget-object v2, Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Active;->INSTANCE:Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Active;

    .line 39
    invoke-direct {p1, v3, v2, v1, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;I)V

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    .line 45
    new-instance v3, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 47
    new-instance v4, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 49
    invoke-direct {v4, v2}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 51
    const v2, 0x7f081752    # @drawable/qs_flashlight_icon_off 'res/drawable/qs_flashlight_icon_off.xml'

    .line 54
    invoke-direct {v3, v2, v4}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 57
    sget-object v2, Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Inactive;->INSTANCE:Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Inactive;

    .line 60
    invoke-direct {p1, v3, v2, v1, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;I)V

    .line 62
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$lockScreenState$1$flashlightCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 65
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 67
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 72
    instance-of p1, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 73
    if-eqz p1, :cond_2

    .line 75
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 77
    move-result-object p0

    .line 80
    const-string p1, "Failed to send "

    .line 81
    const-string/jumbo v0, "updated state"

    .line 83
    const-string v1, " - downstream canceled or failed."

    .line 86
    const-string v2, "FlashlightQuickAffordanceConfig"

    .line 88
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1$callback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_2
    return-void
    .line 93
.end method

.method public final onFlashlightChanged(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    const v2, 0x7f1309b0    # @string/quick_settings_flashlight_label 'Flashlight'

    .line 4
    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    .line 9
    new-instance v3, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 11
    new-instance v4, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 13
    invoke-direct {v4, v2}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 15
    const v2, 0x7f081753    # @drawable/qs_flashlight_icon_on 'res/drawable/qs_flashlight_icon_on.xml'

    .line 18
    invoke-direct {v3, v2, v4}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 21
    sget-object v2, Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Active;->INSTANCE:Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Active;

    .line 24
    invoke-direct {p1, v3, v2, v1, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;I)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    .line 30
    new-instance v3, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 32
    new-instance v4, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 34
    invoke-direct {v4, v2}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 36
    const v2, 0x7f081752    # @drawable/qs_flashlight_icon_off 'res/drawable/qs_flashlight_icon_off.xml'

    .line 39
    invoke-direct {v3, v2, v4}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 42
    sget-object v2, Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Inactive;->INSTANCE:Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Inactive;

    .line 45
    invoke-direct {p1, v3, v2, v1, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;I)V

    .line 47
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$lockScreenState$1$flashlightCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 50
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 52
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 57
    instance-of p1, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 58
    if-eqz p1, :cond_1

    .line 60
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 62
    move-result-object p0

    .line 65
    const-string p1, "Failed to send "

    .line 66
    const-string/jumbo v0, "updated state"

    .line 68
    const-string v1, " - downstream canceled or failed."

    .line 71
    const-string v2, "FlashlightQuickAffordanceConfig"

    .line 73
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1$callback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_1
    return-void
    .line 78
.end method

.method public final onFlashlightError()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    .line 2
    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 4
    new-instance v2, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 6
    const v3, 0x7f1309b0    # @string/quick_settings_flashlight_label 'Flashlight'

    .line 8
    invoke-direct {v2, v3}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 11
    const v3, 0x7f081752    # @drawable/qs_flashlight_icon_off 'res/drawable/qs_flashlight_icon_off.xml'

    .line 14
    invoke-direct {v1, v3, v2}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 17
    sget-object v2, Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Inactive;->INSTANCE:Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Inactive;

    .line 20
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x4

    .line 23
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;I)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$lockScreenState$1$flashlightCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 27
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 29
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 35
    if-eqz v0, :cond_0

    .line 37
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 39
    move-result-object p0

    .line 42
    const-string v0, "Failed to send "

    .line 43
    const-string/jumbo v1, "updated state"

    .line 45
    const-string v2, " - downstream canceled or failed."

    .line 48
    const-string v3, "FlashlightQuickAffordanceConfig"

    .line 50
    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1$callback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :cond_0
    return-void
    .line 55
.end method
