.class Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$4;
.super Ljava/lang/Object;
.source "MiuiConfirmCommonPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->showFingerprintAuthenticationDialog()V
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

    .line 460
    iput-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$4;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$4;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 465
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$4;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 467
    iget-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$4;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$fputmShouldDismissDialog(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;Z)V

    .line 468
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$4;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$mstartConfirmActivity(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
