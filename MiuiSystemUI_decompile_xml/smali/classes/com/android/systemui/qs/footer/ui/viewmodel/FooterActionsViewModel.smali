.class public final Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final _alpha:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _backgroundAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final alpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final backgroundAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final context:Landroid/view/ContextThemeWrapper;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final footerActionsInteractor:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

.field public final foregroundServices:Lkotlinx/coroutines/flow/Flow;

.field public final globalActionsDialogLite:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

.field public final isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final power:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

.field public final security:Lkotlinx/coroutines/flow/Flow;

.field public final settings:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

.field public final userSwitcher:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Z)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->footerActionsInteractor:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    .line 7
    move-object/from16 v2, p3

    .line 9
    iput-object v2, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 11
    move-object/from16 v2, p4

    .line 13
    iput-object v2, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->globalActionsDialogLite:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 15
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 17
    const v3, 0x7f14056f    # @style/Theme.SystemUI.QuickSettings

    .line 19
    move-object v4, p1

    .line 22
    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object v2, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->context:Landroid/view/ContextThemeWrapper;

    .line 26
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 30
    move-result-object v3

    .line 33
    iput-object v3, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->_isVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 34
    new-instance v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 36
    invoke-direct {v4, v3}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 38
    iput-object v4, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 41
    const/high16 v3, 0x3f800000    # 1.0f

    .line 43
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    move-result-object v3

    .line 48
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 49
    move-result-object v4

    .line 52
    iput-object v4, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->_alpha:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 53
    new-instance v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 55
    invoke-direct {v5, v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 57
    iput-object v5, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->alpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 60
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 62
    move-result-object v3

    .line 65
    iput-object v3, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->_backgroundAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 66
    new-instance v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 68
    invoke-direct {v4, v3}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 70
    iput-object v4, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->backgroundAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 73
    iget-object v3, v1, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->securityButtonConfig:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$special$$inlined$map$1;

    .line 75
    new-instance v4, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$1;

    .line 77
    const/4 v5, 0x0

    .line 79
    invoke-direct {v4, v3, p0, v5}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;I)V

    .line 80
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 83
    move-result-object v3

    .line 86
    iput-object v3, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->security:Lkotlinx/coroutines/flow/Flow;

    .line 87
    new-instance v4, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;

    .line 89
    const/4 v6, 0x0

    .line 91
    invoke-direct {v4, p0, v6}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;-><init>(Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;Lkotlin/coroutines/Continuation;)V

    .line 92
    iget-object v7, v1, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->foregroundServicesCount:Lkotlinx/coroutines/flow/Flow;

    .line 95
    iget-object v8, v1, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->hasNewForegroundServices:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 97
    invoke-static {v7, v8, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 99
    move-result-object v3

    .line 102
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 103
    move-result-object v3

    .line 106
    iput-object v3, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->foregroundServices:Lkotlinx/coroutines/flow/Flow;

    .line 107
    new-instance v3, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$1;

    .line 109
    const/4 v4, 0x1

    .line 111
    iget-object v1, v1, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->userSwitcherStatus:Lkotlinx/coroutines/flow/Flow;

    .line 112
    invoke-direct {v3, v1, p0, v4}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;I)V

    .line 114
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 117
    move-result-object v1

    .line 120
    iput-object v1, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->userSwitcher:Lkotlinx/coroutines/flow/Flow;

    .line 121
    new-instance v1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

    .line 123
    const v8, 0x7f0a0865    # @id/settings_button_container

    .line 125
    new-instance v9, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 128
    new-instance v3, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 130
    const v4, 0x7f1300e3    # @string/accessibility_quick_settings_settings 'Open settings.'

    .line 132
    invoke-direct {v3, v4}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 135
    const v4, 0x7f08119e    # @drawable/ic_settings 'res/drawable/ic_settings.xml'

    .line 138
    invoke-direct {v9, v4, v3}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 141
    const/4 v10, 0x0

    .line 144
    const v11, 0x7f040581    # @attr/offStateColor

    .line 145
    new-instance v12, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$settings$1;

    .line 148
    invoke-direct {v12, p0}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$settings$1;-><init>(Ljava/lang/Object;)V

    .line 150
    move-object v7, v1

    .line 153
    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;-><init>(ILcom/android/systemui/common/shared/model/Icon;Ljava/lang/Integer;ILkotlin/jvm/functions/Function1;)V

    .line 154
    iput-object v1, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->settings:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

    .line 157
    if-eqz p5, :cond_0

    .line 159
    new-instance v6, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

    .line 161
    const v8, 0x7f0a0714    # @id/pm_lite

    .line 163
    new-instance v9, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 166
    new-instance v1, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 168
    const v3, 0x7f1300e1    # @string/accessibility_quick_settings_power_menu 'Power menu'

    .line 170
    invoke-direct {v1, v3}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 173
    const v3, 0x1080030    # @android:drawable/ic_lock_power_off

    .line 176
    invoke-direct {v9, v3, v1}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 179
    const v1, 0x1120123    # @android:^attr-private/textColorSearchUrl

    .line 182
    invoke-static {v2, v1, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 185
    move-result v1

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v10

    .line 192
    const v11, 0x1010435    # @android:attr/colorAccent

    .line 193
    new-instance v12, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$power$1;

    .line 196
    invoke-direct {v12, p0}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$power$1;-><init>(Ljava/lang/Object;)V

    .line 198
    move-object v7, v6

    .line 201
    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;-><init>(ILcom/android/systemui/common/shared/model/Icon;Ljava/lang/Integer;ILkotlin/jvm/functions/Function1;)V

    .line 202
    :cond_0
    iput-object v6, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->power:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

    .line 205
    return-void
    .line 207
.end method
