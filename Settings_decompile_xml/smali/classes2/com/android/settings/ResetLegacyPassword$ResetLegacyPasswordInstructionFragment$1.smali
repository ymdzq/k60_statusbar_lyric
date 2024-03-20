.class Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment$1;
.super Ljava/lang/Object;
.source "ResetLegacyPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment$1;->this$0:Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 42
    iget-object p0, p0, Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment$1;->this$0:Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;

    const-class p1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method
