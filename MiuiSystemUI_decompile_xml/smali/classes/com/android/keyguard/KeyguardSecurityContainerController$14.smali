.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$14;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x4

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 10
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethod:Landroid/view/View;

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 17
    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->-$$Nest$msetLockoutViewVisible(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V

    .line 19
    return-void

    .line 22
    :pswitch_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 23
    invoke-static {p1, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->-$$Nest$msetLockoutViewVisible(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V

    .line 25
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 28
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethod:Landroid/view/View;

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object p1

    .line 40
    const v0, 0x7f1308d4    # @string/phone_locked_foget_password_method_content '<Data>You have to <font color=#a5220e>erase all data </font>on your device, including photos and con ...'

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordContent:Landroid/widget/TextView;

    .line 50
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void

    .line 59
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 60
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestion:Landroid/view/View;

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 67
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethod:Landroid/view/View;

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$14;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 74
    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->-$$Nest$msetLockoutViewVisible(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V

    .line 76
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 80
.end method
