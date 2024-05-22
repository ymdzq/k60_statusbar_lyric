.class public final synthetic Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Lcom/android/systemui/animation/Expandable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda5;->f$1:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda5;->f$3:Landroid/view/View;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda5;->f$4:Lcom/android/systemui/animation/Expandable;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda5;->f$1:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda5;->f$3:Landroid/view/View;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda5;->f$4:Lcom/android/systemui/animation/Expandable;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v4, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 15
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    invoke-direct {v4, v5, v6, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(IZLandroid/content/Context;)V

    .line 19
    iput-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 22
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 24
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 27
    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 29
    const v6, 0x7f1308a7    # @string/ok '@android:string/ok'

    .line 31
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 37
    const/4 v6, -0x1

    .line 38
    invoke-virtual {v1, v6, v4, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 39
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 42
    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 46
    move-result v4

    .line 49
    const/4 v6, 0x0

    .line 50
    if-eqz v4, :cond_0

    .line 51
    goto :goto_0

    .line 53
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 54
    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 56
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    .line 58
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 64
    const v4, 0x7f1307c3    # @string/monitoring_button_view_controls 'View controls'

    .line 66
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-object v2, v6

    .line 74
    :goto_0
    const/4 v4, -0x2

    .line 75
    invoke-virtual {v1, v4, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 76
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 79
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 81
    if-eqz p0, :cond_2

    .line 84
    new-instance v1, Lcom/android/systemui/animation/DialogCuj;

    .line 86
    const/16 v2, 0x3a

    .line 88
    const-string v3, "managed_device_info"

    .line 90
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 92
    check-cast p0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;->dialogLaunchController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 97
    move-result-object v6

    .line 100
    :cond_2
    if-eqz v6, :cond_3

    .line 101
    iget-object p0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 103
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 105
    invoke-virtual {p0, v0, v6, v5}, Lcom/android/systemui/animation/DialogLaunchAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;Z)V

    .line 107
    goto :goto_1

    .line 110
    :cond_3
    iget-object p0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 111
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 113
    :goto_1
    return-void
    .line 116
.end method
