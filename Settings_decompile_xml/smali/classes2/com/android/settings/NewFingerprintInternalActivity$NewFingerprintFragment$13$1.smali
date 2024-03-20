.class Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$1;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;


# direct methods
.method constructor <init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$1;->this$1:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$1;->this$1:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;

    iget-object v0, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmIsShowHelpInfo(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Z)V

    .line 729
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$1;->this$1:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;

    iget-object v0, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v1, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmEnrollHelpInfoText(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$1;->this$1:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmEnrollHelpInfoText(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$msetContentDescription(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)V

    return-void
.end method
