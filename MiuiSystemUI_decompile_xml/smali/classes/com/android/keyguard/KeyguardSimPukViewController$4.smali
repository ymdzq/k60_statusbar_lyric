.class public final Lcom/android/keyguard/KeyguardSimPukViewController$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$4;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$4;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mForgetPasswordDialog:Landroid/app/AlertDialog;

    .line 4
    if-nez p1, :cond_0

    .line 6
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 10
    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 22
    const v1, 0x7f13038b    # @string/dialog_forget_password_message 'If you forgot your PUK code, you can disable this eSIM not to lose access to your device. After that ...'

    .line 25
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 28
    move-result-object v1

    .line 31
    new-instance v2, Lcom/android/keyguard/KeyguardSimPukViewController$5;

    .line 32
    const/4 v3, 0x1

    .line 34
    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardSimPukViewController$5;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;I)V

    .line 35
    const v3, 0x7f13038c    # @string/dialog_forget_password_ok 'Disable'

    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    move-result-object v1

    .line 44
    new-instance v2, Lcom/android/keyguard/KeyguardSimPukViewController$5;

    .line 45
    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSimPukViewController$5;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;I)V

    .line 47
    const v0, 0x7f13038a    # @string/dialog_forget_password_cancel 'Cancel'

    .line 50
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 56
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mForgetPasswordDialog:Landroid/app/AlertDialog;

    .line 60
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 62
    move-result-object p1

    .line 65
    const/16 v0, 0x7d9

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mForgetPasswordDialog:Landroid/app/AlertDialog;

    .line 71
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 73
    :cond_0
    return-void
    .line 76
.end method
