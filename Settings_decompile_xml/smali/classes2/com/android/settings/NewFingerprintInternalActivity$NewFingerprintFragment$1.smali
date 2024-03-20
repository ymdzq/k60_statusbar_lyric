.class Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$1;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$1;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$1;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$1;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$1;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v1, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->add_fingerprint_instruction_title:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$1;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 161
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$1;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
