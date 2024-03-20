.class public final Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, -0x2

    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    move v1, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x2

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    .line 9
    iget-object v2, v2, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 11
    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    return-void

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    .line 20
    iget-boolean v2, v1, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->isGuestEphemeral:Z

    .line 22
    const/4 v3, -0x1

    .line 24
    if-eqz v2, :cond_4

    .line 25
    if-eq p2, v0, :cond_3

    .line 27
    if-eq p2, v3, :cond_2

    .line 29
    goto :goto_1

    .line 31
    :cond_2
    iget-object p2, v1, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 32
    invoke-virtual {p2, v1}, Lcom/android/systemui/animation/DialogLaunchAnimator;->dismissStack(Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;)V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    .line 37
    iget-object p2, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->onExitGuestUserListener:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;

    .line 39
    iget v0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->guestUserId:I

    .line 41
    iget p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->targetUserId:I

    .line 43
    invoke-virtual {p2, v0, p0, p1}, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;->onExitGuestUser(IIZ)V

    .line 45
    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 49
    goto :goto_1

    .line 52
    :cond_4
    const/4 v2, -0x3

    .line 53
    if-eq p2, v2, :cond_7

    .line 54
    if-eq p2, v0, :cond_6

    .line 56
    if-eq p2, v3, :cond_5

    .line 58
    goto :goto_1

    .line 60
    :cond_5
    iget-object p2, v1, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 61
    invoke-virtual {p2, v1}, Lcom/android/systemui/animation/DialogLaunchAnimator;->dismissStack(Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;)V

    .line 63
    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    .line 66
    iget-object p2, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->onExitGuestUserListener:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;

    .line 68
    iget v0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->guestUserId:I

    .line 70
    iget p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->targetUserId:I

    .line 72
    invoke-virtual {p2, v0, p0, p1}, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;->onExitGuestUser(IIZ)V

    .line 74
    goto :goto_1

    .line 77
    :cond_6
    iget-object p1, v1, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 78
    invoke-virtual {p1, v1}, Lcom/android/systemui/animation/DialogLaunchAnimator;->dismissStack(Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    .line 83
    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->onExitGuestUserListener:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;

    .line 85
    iget p2, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->guestUserId:I

    .line 87
    iget p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->targetUserId:I

    .line 89
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p1, p2, p0, v0}, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;->onExitGuestUser(IIZ)V

    .line 92
    goto :goto_1

    .line 95
    :cond_7
    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 96
    :goto_1
    return-void
    .line 99
.end method
