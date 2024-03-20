.class Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;
.super Ljava/lang/Object;
.source "MiuiConfirmCommonPassword.java"

# interfaces
.implements Lcom/android/settings/FingerprintIdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->startFingerprintIdentification()V
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

    .line 190
    iput-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)Lcom/android/settings/FingerprintHelper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$sfgetsIsFod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$fgetmFingerprintIdentificationDialog(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->tv_secspace_fod_finger_result:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$fgetmFingerprintIdentificationDialog(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->confirm_fingerprint_view_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->fingerprint_identify_try_again_msg:I

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :goto_0
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$fgetmFingerprintFailTimes(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$fputmFingerprintFailTimes(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;I)V

    return-void
.end method

.method public onIdentified(I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$misSecurityCoreAddBusiness(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->onIdentifiedBySecurityCoreAdd(I)V

    return-void

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$mreleaseFingerprintHelper(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V

    .line 217
    iget-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$fputmShouldDismissDialog(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;Z)V

    .line 219
    iget-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 220
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onLockout()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$mreleaseFingerprintHelper(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$fputmShouldDismissDialog(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;Z)V

    .line 227
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;->this$0:Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->-$$Nest$mstartConfirmActivity(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V

    return-void
.end method
