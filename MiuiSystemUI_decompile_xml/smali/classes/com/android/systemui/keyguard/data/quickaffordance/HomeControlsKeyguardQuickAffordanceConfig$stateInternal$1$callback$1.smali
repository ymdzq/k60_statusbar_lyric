.class public final Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onServicesUpdated(Ljava/util/List;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;->component:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 4
    invoke-virtual {v1}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsController()Ljava/util/Optional;

    .line 6
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsController;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 19
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v2

    .line 24
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;->component:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 25
    iget-boolean v3, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    .line 27
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    move-result v1

    .line 36
    xor-int/2addr v1, v5

    .line 37
    if-ne v1, v5, :cond_1

    .line 38
    move v1, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v4

    .line 42
    :goto_1
    check-cast p1, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    move-result v6

    .line 48
    if-eqz v6, :cond_2

    .line 49
    goto :goto_3

    .line 51
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v6

    .line 55
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v7

    .line 59
    if-eqz v7, :cond_5

    .line 60
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v7

    .line 65
    check-cast v7, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 66
    iget-object v7, v7, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 68
    if-eqz v7, :cond_4

    .line 70
    move v7, v5

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v7, v4

    .line 74
    :goto_2
    if-eqz v7, :cond_3

    .line 75
    move v4, v5

    .line 77
    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    move-result p1

    .line 81
    xor-int/2addr p1, v5

    .line 82
    iget-object v5, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsTileResourceConfiguration:Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    .line 83
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-virtual {v0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getVisibility()Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    .line 88
    move-result-object v5

    .line 91
    const v6, 0x7f080c04    # @drawable/controls_icon 'res/drawable/controls_icon.xml'

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v6

    .line 98
    if-eqz v3, :cond_7

    .line 99
    if-nez v1, :cond_6

    .line 101
    if-eqz v4, :cond_7

    .line 103
    :cond_6
    if-eqz p1, :cond_7

    .line 105
    if-eqz v6, :cond_7

    .line 107
    sget-object p1, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    .line 109
    if-ne v5, p1, :cond_7

    .line 111
    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    .line 113
    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 115
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 117
    move-result v3

    .line 120
    new-instance v4, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 121
    iget-object v0, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsTileResourceConfiguration:Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    const v0, 0x7f130956    # @string/quick_controls_title 'Device controls'

    .line 128
    invoke-direct {v4, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 131
    invoke-direct {v1, v3, v4}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 134
    const/4 v0, 0x6

    .line 137
    invoke-direct {p1, v1, v2, v2, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;I)V

    .line 138
    goto :goto_4

    .line 141
    :cond_7
    sget-object p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Hidden;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Hidden;

    .line 142
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig$stateInternal$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 144
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 146
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object p0

    .line 151
    instance-of p1, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 152
    if-eqz p1, :cond_8

    .line 154
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 156
    move-result-object p0

    .line 159
    const-string p1, "Failed to send "

    .line 160
    const-string/jumbo v0, "updated state"

    .line 162
    const-string v1, " - downstream canceled or failed."

    .line 165
    const-string v2, "HomeControlsKeyguardQuickAffordanceConfig"

    .line 167
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1$callback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    :cond_8
    return-void
    .line 172
.end method
