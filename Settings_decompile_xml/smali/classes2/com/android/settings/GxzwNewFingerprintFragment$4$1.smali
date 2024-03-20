.class Lcom/android/settings/GxzwNewFingerprintFragment$4$1;
.super Ljava/lang/Object;
.source "GxzwNewFingerprintFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GxzwNewFingerprintFragment$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;


# direct methods
.method constructor <init>(Lcom/android/settings/GxzwNewFingerprintFragment$4;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$1;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$1;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v0, v0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmIsShowHelpInfo(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V

    .line 524
    const-class v0, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnrollHelpInfoText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$1;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v2, v2, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollHelpInfoText(Lcom/android/settings/GxzwNewFingerprintFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$1;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v0, v0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionTitle(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$1;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v1, v1, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollHelpInfoText(Lcom/android/settings/GxzwNewFingerprintFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$1;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollHelpInfoText(Lcom/android/settings/GxzwNewFingerprintFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$msetContentDescription(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V

    return-void
.end method
