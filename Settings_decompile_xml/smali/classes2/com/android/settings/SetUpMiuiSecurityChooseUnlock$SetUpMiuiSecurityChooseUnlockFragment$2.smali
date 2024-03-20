.class Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment$2;
.super Ljava/lang/Object;
.source "SetUpMiuiSecurityChooseUnlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->inflateCustomizeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment$2;->this$0:Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment$2;->this$0:Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 106
    iget-object p0, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment$2;->this$0:Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
