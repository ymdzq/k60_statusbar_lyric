.class public final synthetic Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPinBasedInputViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardPinBasedInputViewController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardPinBasedInputViewController;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    .line 6
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    move-object p1, p0

    .line 15
    check-cast p1, Lcom/android/keyguard/KeyguardPinBasedInputView;

    .line 16
    invoke-virtual {p1, v0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 18
    :cond_0
    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    .line 21
    invoke-virtual {p0, v0, v0}, Landroid/widget/LinearLayout;->performHapticFeedback(II)Z

    .line 23
    return v0
    .line 26
.end method
