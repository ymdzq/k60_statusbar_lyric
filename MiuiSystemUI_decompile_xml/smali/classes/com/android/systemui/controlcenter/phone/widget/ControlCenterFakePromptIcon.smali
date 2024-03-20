.class public final Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/miui/statusbar/ControlCenterStatusBarView;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public privacyContainer:Landroid/widget/LinearLayout;

.field public final privacyController$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object p1, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon$privacyController$2;->INSTANCE:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon$privacyController$2;

    .line 5
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;->privacyController$delegate:Lkotlin/Lazy;

    .line 11
    return-void
    .line 13
.end method

.method private final getPrivacyController()Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;->privacyController$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 8
    return-object p0
    .line 10
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;->getPrivacyController()Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;->privacyContainer:Landroid/widget/LinearLayout;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPromptContainer(Landroid/widget/LinearLayout;I)V

    .line 15
    return-void
    .line 18
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;->getPrivacyController()Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;->privacyContainer:Landroid/widget/LinearLayout;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 13
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePromptContainer(Landroid/widget/LinearLayout;)V

    .line 14
    return-void
    .line 17
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0734    # @id/privacy_container

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakePromptIcon;->privacyContainer:Landroid/widget/LinearLayout;

    .line 14
    return-void
    .line 16
.end method

.method public setListening(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
