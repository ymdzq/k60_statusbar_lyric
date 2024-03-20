.class Lcom/android/settings/PrivacyModeDialog$CloseDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PrivacyModeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PrivacyModeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseDialogReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/android/settings/PrivacyModeDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacyModeDialog;Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/PrivacyModeDialog$CloseDialogReceiver;->this$0:Lcom/android/settings/PrivacyModeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/android/settings/PrivacyModeDialog$CloseDialogReceiver;->mContext:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/android/settings/PrivacyModeDialog$CloseDialogReceiver;->mDialog:Landroid/app/Dialog;

    .line 62
    new-instance p1, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 63
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p3, 0x2

    .line 64
    invoke-virtual {p2, p0, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/android/settings/PrivacyModeDialog$CloseDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    iget-object p0, p0, Lcom/android/settings/PrivacyModeDialog$CloseDialogReceiver;->this$0:Lcom/android/settings/PrivacyModeDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/PrivacyModeDialog$CloseDialogReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
