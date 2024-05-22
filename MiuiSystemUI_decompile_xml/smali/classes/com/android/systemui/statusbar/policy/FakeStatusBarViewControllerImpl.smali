.class public final Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController;


# instance fields
.field public bouncerShowing:Z

.field public final carrierTextControllerImpl:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

.field public final context:Landroid/content/Context;

.field public fakePromptIcon:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;

.field public fakeStatusIcons:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

.field public keyguardPromptIcon:Landroid/view/View;

.field public keyguardStatusIcons:Landroid/view/View;

.field public final keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$keyguardUpdateMonitorCallback$1;

.field public final layoutInflater$delegate:Lkotlin/Lazy;

.field public final listeners$delegate:Lkotlin/Lazy;

.field public final onLayoutChangeListener:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;

.field public final privacyControllerImpl:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

.field public realPromptIcon:Landroid/view/View;

.field public realStatusIcons:Landroid/view/View;

.field public statusBarPromptIcon:Landroid/view/View;

.field public statusBarState:I

.field public statusBarStatusIcons:Landroid/view/View;

.field public final uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;Landroid/os/Handler;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->carrierTextControllerImpl:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->privacyControllerImpl:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->uiHandler:Landroid/os/Handler;

    .line 11
    iget-boolean p1, p6, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->bouncerShowing:Z

    .line 15
    invoke-interface {p5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 17
    move-result p1

    .line 20
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->statusBarState:I

    .line 21
    new-instance p1, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$layoutInflater$2;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$layoutInflater$2;-><init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;)V

    .line 25
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->layoutInflater$delegate:Lkotlin/Lazy;

    .line 32
    sget-object p1, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$listeners$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$listeners$2;

    .line 34
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->listeners$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;

    .line 42
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;-><init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;)V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->onLayoutChangeListener:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;

    .line 47
    new-instance p1, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$keyguardUpdateMonitorCallback$1;

    .line 49
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;)V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->keyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$keyguardUpdateMonitorCallback$1;

    .line 54
    new-instance p2, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$statusBarStateListener$1;

    .line 56
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$statusBarStateListener$1;-><init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;)V

    .line 58
    invoke-virtual {p6, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 61
    invoke-interface {p5, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 64
    return-void
    .line 67
.end method


# virtual methods
.method public final addStatusBarViewsListener(Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$addStatusBarViewsListener$1;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$addStatusBarViewsListener$1;-><init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->uiHandler:Landroid/os/Handler;

    .line 7
    invoke-static {p0, v0}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    .line 9
    return-void
    .line 12
.end method

.method public final adjustRealPromptIcon()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->statusBarState:I

    .line 2
    if-eqz v0, :cond_2

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->bouncerShowing:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    :goto_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->keyguardPromptIcon:Landroid/view/View;

    .line 16
    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->statusBarPromptIcon:Landroid/view/View;

    .line 19
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realPromptIcon:Landroid/view/View;

    .line 21
    if-ne v1, v0, :cond_3

    .line 23
    goto :goto_3

    .line 25
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->onLayoutChangeListener:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;

    .line 26
    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 30
    :cond_4
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realPromptIcon:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->updateFakePromptIconSize()V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realPromptIcon:Landroid/view/View;

    .line 38
    if-eqz v0, :cond_5

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->listeners$delegate:Lkotlin/Lazy;

    .line 45
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Landroid/util/ArraySet;

    .line 51
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 56
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v1

    .line 60
    if-eqz v1, :cond_6

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realPromptIcon:Landroid/view/View;

    .line 69
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;->onPromptIconChanged(Landroid/view/View;)V

    .line 71
    goto :goto_2

    .line 74
    :cond_6
    :goto_3
    return-void
    .line 75
.end method

.method public final adjustRealStatusIcons()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->statusBarState:I

    .line 2
    if-eqz v0, :cond_2

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->bouncerShowing:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    :goto_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->keyguardStatusIcons:Landroid/view/View;

    .line 16
    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->statusBarStatusIcons:Landroid/view/View;

    .line 19
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realStatusIcons:Landroid/view/View;

    .line 21
    if-ne v1, v0, :cond_3

    .line 23
    goto :goto_3

    .line 25
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->onLayoutChangeListener:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;

    .line 26
    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 30
    :cond_4
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realStatusIcons:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->updateFakeStatusIconsSize()V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realStatusIcons:Landroid/view/View;

    .line 38
    if-eqz v0, :cond_5

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->listeners$delegate:Lkotlin/Lazy;

    .line 45
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Landroid/util/ArraySet;

    .line 51
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 56
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v1

    .line 60
    if-eqz v1, :cond_6

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realStatusIcons:Landroid/view/View;

    .line 69
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;->onStatusIconsChanged(Landroid/view/View;)V

    .line 71
    goto :goto_2

    .line 74
    :cond_6
    :goto_3
    return-void
    .line 75
.end method

.method public final getControlCenterDateViewRes()I
    .locals 0

    .line 1
    const p0, 0x7f0d0073    # @layout/control_center_date_view 'res/layout/control_center_date_view.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getControlCenterStatusBarIconsRes()I
    .locals 0

    .line 1
    const p0, 0x7f0d0076    # @layout/control_center_status_bar 'res/layout/control_center_status_bar.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getFakePromptIcon()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->fakePromptIcon:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->layoutInflater$delegate:Lkotlin/Lazy;

    .line 6
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/LayoutInflater;

    .line 12
    const v1, 0x7f0d0074    # @layout/control_center_fake_prompt_icon 'res/layout/control_center_fake_prompt_icon.xml'

    .line 14
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;

    .line 22
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->fakePromptIcon:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->updateFakePromptIconSize()V

    .line 26
    :cond_0
    return-object v0
    .line 29
.end method

.method public final bridge synthetic getFakeStatusIcons()Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->getFakeStatusIcons()Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    move-result-object p0

    return-object p0
.end method

.method public final getFakeStatusIcons()Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->fakeStatusIcons:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->layoutInflater$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0075    # @layout/control_center_fake_status_icons 'res/layout/control_center_fake_status_icons.xml'

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    .line 5
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->fakeStatusIcons:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->updateFakeStatusIconsSize()V

    :cond_0
    return-object v0
.end method

.method public final getMiuiCarrierTextController()Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->carrierTextControllerImpl:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMiuiPrivacyController()Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->privacyControllerImpl:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 2
    return-object p0
    .line 4
.end method

.method public final removeStatusBarViewsListener(Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$removeStatusBarViewsListener$1;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$removeStatusBarViewsListener$1;-><init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->uiHandler:Landroid/os/Handler;

    .line 7
    invoke-static {p0, v0}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    .line 9
    return-void
    .line 12
.end method

.method public final updateFakePromptIconSize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realPromptIcon:Landroid/view/View;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->fakePromptIcon:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;

    .line 7
    if-nez p0, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v1

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result v0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;->privacyContainer:Landroid/widget/LinearLayout;

    .line 20
    const/4 v2, 0x0

    .line 22
    if-nez p0, :cond_2

    .line 23
    move-object v3, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move-object v3, p0

    .line 27
    :goto_0
    if-nez p0, :cond_3

    .line 28
    move-object p0, v2

    .line 30
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object p0

    .line 34
    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void
    .line 42
.end method

.method public final updateFakeStatusIconsSize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realStatusIcons:Landroid/view/View;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->fakeStatusIcons:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    .line 7
    if-nez p0, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v1

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result v0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->statusBarInner:Landroid/widget/LinearLayout;

    .line 20
    const/4 v2, 0x0

    .line 22
    if-nez p0, :cond_2

    .line 23
    move-object v3, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move-object v3, p0

    .line 27
    :goto_0
    if-nez p0, :cond_3

    .line 28
    move-object p0, v2

    .line 30
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object p0

    .line 34
    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void
    .line 42
.end method
