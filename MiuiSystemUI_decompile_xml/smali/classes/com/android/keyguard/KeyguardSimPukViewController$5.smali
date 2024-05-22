.class public final Lcom/android/keyguard/KeyguardSimPukViewController$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$5;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$5;->$r8$classId:I

    .line 2
    const/4 p2, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$5;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 9
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mForgetPasswordDialog:Landroid/app/AlertDialog;

    .line 11
    return-void

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$5;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 14
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    check-cast p1, Lcom/android/keyguard/KeyguardSimPukView;

    .line 18
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 23
    const-string v0, "ForgetPuk"

    .line 24
    invoke-static {p1, v0}, Lcom/android/systemui/util/PhoneUtils;->disableProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$5;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 29
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mForgetPasswordDialog:Landroid/app/AlertDialog;

    .line 31
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 34
.end method
