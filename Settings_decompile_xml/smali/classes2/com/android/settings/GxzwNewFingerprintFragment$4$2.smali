.class Lcom/android/settings/GxzwNewFingerprintFragment$4$2;
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

    .line 557
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 560
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v0, v0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/GxzwNewFingerprintFragment;)Lcom/android/settings/FingerprintHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v1, v1, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/utils/FingerprintUtils;->getIdOfFingerprintWithoutName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmIdOfFingerprintWithoutName(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v1, v1, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/utils/FingerprintUtils;->generateFingerprintName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmFingerprintName(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v1, v1, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionTitle(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->gxzw_add_fingerprint_finish:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 564
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v1, v1, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionText(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v3, v3, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v3}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->fingerprint_gxzw_add_fingerprint_finish:I

    iget-object v5, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v5, v5, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v5}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmFingerprintName(Lcom/android/settings/GxzwNewFingerprintFragment;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v1, v1, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionIndicate(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v1, v1, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmOkButton(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v1, v1, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmCancelButton(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v1, v1, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmCancelButton(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v1, v1, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mreleaseFingerprintHelper(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    .line 571
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v0, v0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_keyguard"

    const/4 v4, 0x2

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 573
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v0, v0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gxzw_icon_vibrate_enable"

    invoke-static {v0, v1, v3, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v0, v0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v0, v0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$msetContentDescription(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object v0, v0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;->this$1:Lcom/android/settings/GxzwNewFingerprintFragment$4;

    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmShowDialogToAddFaceRunnable(Lcom/android/settings/GxzwNewFingerprintFragment;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
