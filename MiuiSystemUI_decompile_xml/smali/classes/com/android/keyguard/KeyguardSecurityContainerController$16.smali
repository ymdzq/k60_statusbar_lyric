.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$16;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field public final synthetic val$shutDownPasswordEnable:Z


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->val$shutDownPasswordEnable:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethod:Landroid/view/View;

    .line 4
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 10
    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->-$$Nest$msetLockoutViewVisible(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V

    .line 12
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 15
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestion:Landroid/view/View;

    .line 17
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 23
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p1

    .line 28
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->val$shutDownPasswordEnable:Z

    .line 29
    if-eqz v0, :cond_0

    .line 31
    const v0, 0x7f130ae6    # @string/shut_down_password_forget_password_suggesstion_one_content '<Data>Press and hold the <font color=#e6e6e6>[Power]</font> and <font color=#e6e6e6>[Volume +]</font ...'

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    const v0, 0x7f1308d7    # @string/phone_locked_forget_password_suggesstion_one_content '<Data>Power off your device, press and hold the <font color=#a5220e>Power button</font> and the <fon ...'

    .line 37
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 44
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v0

    .line 49
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->val$shutDownPasswordEnable:Z

    .line 50
    if-eqz v1, :cond_1

    .line 52
    const v1, 0x7f130ae7    # @string/shut_down_password_forget_password_suggesstion_two_content '<Data>Select <font color=#e6e6e6>[Wipe data]</font> and tap <font color=#e6e6e6>[Reboot]</font> afte ...'

    .line 54
    goto :goto_1

    .line 57
    :cond_1
    const v1, 0x7f1308d8    # @string/phone_locked_forget_password_suggesstion_two_content '<Data>Select <font color=#a5220e>"Wipe &amp; Reset"</font> and wait until the device reboots.</Data>'

    .line 58
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 64
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 65
    if-nez v1, :cond_2

    .line 67
    goto :goto_2

    .line 69
    :cond_2
    const-string v1, "1. "

    .line 70
    invoke-static {v1, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 75
    const-string v1, "2. "

    .line 76
    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 81
    :goto_2
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainerController$16$1;

    .line 82
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$16$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController$16;)V

    .line 84
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 87
    iget-object v2, v2, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOne:Landroid/widget/TextView;

    .line 89
    const/4 v3, 0x0

    .line 91
    invoke-static {p1, v1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    .line 92
    move-result-object p1

    .line 95
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 99
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionTwo:Landroid/widget/TextView;

    .line 101
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 103
    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
    .line 110
.end method
