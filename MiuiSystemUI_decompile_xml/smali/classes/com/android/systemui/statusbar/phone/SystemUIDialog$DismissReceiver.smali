.class public final Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mDialog:Landroid/app/Dialog;

.field public final mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public mRegistered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 7
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    return-void
    .line 19
.end method

.method public constructor <init>(Landroid/app/Dialog;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogLaunchAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mDialog:Landroid/app/Dialog;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/animation/DialogLaunchAnimator;->disableAllCurrentDialogsExitAnimations()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mDialog:Landroid/app/Dialog;

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    return-void
    .line 12
.end method
