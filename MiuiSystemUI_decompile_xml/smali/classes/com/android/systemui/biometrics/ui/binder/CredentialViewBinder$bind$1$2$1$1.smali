.class public final Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $descriptionView:Landroid/widget/TextView;

.field public final synthetic $iconView:Landroid/widget/ImageView;

.field public final synthetic $subtitleView:Landroid/widget/TextView;

.field public final synthetic $titleView:Landroid/widget/TextView;

.field public final synthetic $view:Landroid/view/ViewGroup;

.field public final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$titleView:Landroid/widget/TextView;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$view:Landroid/view/ViewGroup;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$subtitleView:Landroid/widget/TextView;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$descriptionView:Landroid/widget/TextView;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$iconView:Landroid/widget/ImageView;

    .line 10
    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialHeaderViewModel;

    .line 2
    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;

    .line 4
    iget-object p2, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->title:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$titleView:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$view:Landroid/view/ViewGroup;

    .line 13
    iget-object v0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->title:Ljava/lang/String;

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$subtitleView:Landroid/widget/TextView;

    .line 20
    iget-object v1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->subtitle:Ljava/lang/String;

    .line 22
    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinderKt;->access$setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$descriptionView:Landroid/widget/TextView;

    .line 27
    iget-object v1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->description:Ljava/lang/String;

    .line 29
    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinderKt;->access$setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$iconView:Landroid/widget/ImageView;

    .line 34
    if-eqz v0, :cond_0

    .line 36
    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->icon:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 43
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->animateContents:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 45
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Boolean;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    move-result p0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object p0

    .line 62
    const p1, 0x7f0700ed    # @dimen/biometric_dialog_credential_translation_offset '60.0dp'

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 66
    move-result p0

    .line 69
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 70
    const/4 p0, 0x0

    .line 73
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 74
    new-instance p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinderKt$animateCredentialViewIn$1;

    .line 77
    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinderKt$animateCredentialViewIn$1;-><init>(Landroid/view/View;)V

    .line 79
    invoke-virtual {p2, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 82
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    return-object p0
    .line 87
.end method
