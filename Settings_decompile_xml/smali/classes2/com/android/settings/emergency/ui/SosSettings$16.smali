.class Lcom/android/settings/emergency/ui/SosSettings$16;
.super Landroid/os/CountDownTimer;
.source "SosSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosSettings;->showPrivacyRevockeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosSettings;

.field final synthetic val$btn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosSettings;JJLandroid/widget/Button;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$16;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    iput-object p6, p0, Lcom/android/settings/emergency/ui/SosSettings$16;->val$btn:Landroid/widget/Button;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings$16;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {v0}, Lcom/android/settings/emergency/ui/SosSettings;->access$100(Lcom/android/settings/emergency/ui/SosSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings$16;->val$btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings$16;->val$btn:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings$16;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->privacy_authorize_revoke:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings$16;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {v0}, Lcom/android/settings/emergency/ui/SosSettings;->access$000(Lcom/android/settings/emergency/ui/SosSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings$16;->val$btn:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings$16;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->privacy_authorize_revoke_time:I

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
