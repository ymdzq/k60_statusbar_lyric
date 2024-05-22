.class public final Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final USER_SETTINGS_INTENT:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.settings.USER_SETTINGS"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/animation/DialogLaunchAnimator;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 5
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    const p1, 0x7f130955    # @string/qs_user_switch_dialog_title 'Select user'

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 15
    new-instance p1, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$1;

    .line 18
    invoke-direct {p1, p3}, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$1;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    .line 20
    const v0, 0x7f1309aa    # @string/quick_settings_done 'Done'

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 26
    new-instance p1, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;

    .line 29
    move-object v1, p1

    .line 31
    move-object v2, p4

    .line 32
    move-object v3, p3

    .line 33
    move-object v4, p6

    .line 34
    move-object v5, p0

    .line 35
    move-object v6, p5

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;-><init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 37
    const p3, 0x7f1309cb    # @string/quick_settings_more_user_settings 'Manage users'

    .line 40
    const/4 p4, 0x0

    .line 43
    const/4 p5, -0x3

    .line 44
    invoke-virtual {p0, p5, p3, p1, p4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 45
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 52
    move-result-object p1

    .line 55
    const p3, 0x7f0d0310    # @layout/qs_user_dialog_content 'res/layout/qs_user_dialog_content.xml'

    .line 56
    const/4 p4, 0x0

    .line 59
    invoke-virtual {p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 64
    const p3, 0x7f0a03b8    # @id/grid

    .line 67
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object p1

    .line 73
    check-cast p1, Landroid/view/ViewGroup;

    .line 74
    new-instance p3, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;

    .line 76
    invoke-direct {p3, p1, p2}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;-><init>(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    .line 78
    new-instance p1, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;

    .line 81
    invoke-direct {p1, p0, p6}, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;-><init>(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogLaunchAnimator;)V

    .line 83
    iput-object p1, p2, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mDialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 86
    return-void
    .line 88
.end method
