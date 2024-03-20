.class Lmiuix/provision/ProvisionBaseActivity$3;
.super Ljava/lang/Object;
.source "ProvisionBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/provision/ProvisionBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/provision/ProvisionBaseActivity;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionBaseActivity;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$3;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 238
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$3;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/OobeUtil;->isTabletLand(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity$3;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->onBackAnimStart()V

    return-void

    .line 243
    :cond_0
    invoke-static {}, Lmiuix/provision/OobeUtil;->needFastAnimation()Z

    move-result p1

    const-string v0, "OobeUtil2"

    if-eqz p1, :cond_1

    .line 244
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$3;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/provision/ProvisionBaseActivity;->updateButtonState(Z)V

    .line 245
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$3;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseActivity;->access$100(Lmiuix/provision/ProvisionBaseActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lmiuix/provision/ProvisionBaseActivity$3$1;

    invoke-direct {v1, p0}, Lmiuix/provision/ProvisionBaseActivity$3$1;-><init>(Lmiuix/provision/ProvisionBaseActivity$3;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$3;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.miui.voicetrigger"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$3;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->getXiaoAiSupportVersion()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 253
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity$3;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->onBackAnimStart()V

    return-void

    .line 258
    :cond_1
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$3;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->isOtherAnimEnd()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "other anim not end"

    .line 259
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p1, "begin start OOBSETTINGS"

    .line 263
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$3;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    iget-object v0, p1, Lmiuix/provision/ProvisionBaseActivity;->mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->getTitleLayoutHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/provision/ProvisionAnimHelper;->setAnimY(I)V

    .line 266
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity$3;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity;->mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionAnimHelper;->goBackStep()Z

    :cond_3
    return-void
.end method
