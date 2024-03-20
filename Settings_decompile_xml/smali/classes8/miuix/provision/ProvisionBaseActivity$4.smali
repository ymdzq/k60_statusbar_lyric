.class Lmiuix/provision/ProvisionBaseActivity$4;
.super Ljava/lang/Object;
.source "ProvisionBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/provision/ProvisionBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/provision/ProvisionBaseActivity;

.field final synthetic val$titleLayoutHolder:Lmiuix/provision/TitleLayoutHolder;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionBaseActivity;Lmiuix/provision/TitleLayoutHolder;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$4;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    iput-object p2, p0, Lmiuix/provision/ProvisionBaseActivity$4;->val$titleLayoutHolder:Lmiuix/provision/TitleLayoutHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 384
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$4;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    invoke-static {p1, v0}, Lmiuix/provision/ProvisionBaseActivity;->access$202(Lmiuix/provision/ProvisionBaseActivity;I)I

    .line 385
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$4;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/OobeUtil;->isTabletLand(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$4;->val$titleLayoutHolder:Lmiuix/provision/TitleLayoutHolder;

    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity$4;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p0}, Lmiuix/provision/ProvisionBaseActivity;->access$200(Lmiuix/provision/ProvisionBaseActivity;)I

    move-result p0

    invoke-static {p1, p0}, Lmiuix/provision/TitleLayoutHolder;->adjustPaddingTop(Lmiuix/provision/TitleLayoutHolder;I)V

    :cond_0
    return-object p2
.end method
