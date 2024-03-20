.class Lmiuix/provision/ProvisionBaseActivity$6;
.super Ljava/lang/Object;
.source "ProvisionBaseActivity.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/provision/ProvisionBaseActivity;->registerAccessibiltyStateChange(Landroid/content/Context;)V
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

    .line 538
    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$6;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 2

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchExplorationStateChanged enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionBaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 543
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity$6;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lmiuix/provision/OobeUtil;->setNavigationBarFullScreen(Landroid/content/Context;Z)V

    goto :goto_0

    .line 548
    :cond_0
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity$6;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiuix/provision/OobeUtil;->setNavigationBarFullScreen(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method
