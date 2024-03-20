.class Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$3;
.super Ljava/lang/Object;
.source "MiuiConfirmCommonPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->showFodFingerprintAuthenticationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$3;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 453
    iget-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$3;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 454
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$3;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
