.class Lcom/android/settings/PrivacyModeDialog$1;
.super Ljava/lang/Object;
.source "PrivacyModeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PrivacyModeDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PrivacyModeDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacyModeDialog;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settings/PrivacyModeDialog$1;->this$0:Lcom/android/settings/PrivacyModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 39
    new-instance p1, Landroid/security/ChooseLockSettingsHelper;

    iget-object p0, p0, Lcom/android/settings/PrivacyModeDialog$1;->this$0:Lcom/android/settings/PrivacyModeDialog;

    invoke-direct {p1, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 p0, 0x1

    .line 40
    invoke-virtual {p1, p0}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    return-void
.end method
