.class Lmiuix/provision/ProvisionBaseActivity$1;
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

    .line 160
    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 163
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseActivity;->access$000(Lmiuix/provision/ProvisionBaseActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->nextBtnCustomLogic()V

    return-void

    .line 167
    :cond_0
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/OobeUtil;->isTabletLand(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->onNextAminStart()V

    return-void

    .line 171
    :cond_1
    invoke-static {}, Lmiuix/provision/OobeUtil;->needFastAnimation()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "OobeUtil2"

    if-eqz p1, :cond_2

    .line 172
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1, v0}, Lmiuix/provision/ProvisionBaseActivity;->updateButtonState(Z)V

    .line 173
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseActivity;->access$100(Lmiuix/provision/ProvisionBaseActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lmiuix/provision/ProvisionBaseActivity$1$1;

    invoke-direct {v2, p0}, Lmiuix/provision/ProvisionBaseActivity$1$1;-><init>(Lmiuix/provision/ProvisionBaseActivity$1;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 180
    :cond_2
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->isOtherAnimEnd()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "other anim not end"

    .line 181
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_3
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->isAnimEnded()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p0, "video anim not end"

    .line 186
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_0
    const-string p1, "begin start OOBSETTINGS"

    .line 190
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    iget-object v1, p1, Lmiuix/provision/ProvisionBaseActivity;->mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

    if-eqz v1, :cond_5

    .line 192
    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->getTitleLayoutHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Lmiuix/provision/ProvisionAnimHelper;->setAnimY(I)V

    .line 193
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity;->mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionAnimHelper;->goNextStep(I)Z

    :cond_5
    return-void
.end method
