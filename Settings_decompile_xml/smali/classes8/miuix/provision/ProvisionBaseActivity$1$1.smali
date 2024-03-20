.class Lmiuix/provision/ProvisionBaseActivity$1$1;
.super Ljava/lang/Object;
.source "ProvisionBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/provision/ProvisionBaseActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/provision/ProvisionBaseActivity$1;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionBaseActivity$1;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$1$1;->this$1:Lmiuix/provision/ProvisionBaseActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 176
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity$1$1;->this$1:Lmiuix/provision/ProvisionBaseActivity$1;

    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity$1;->this$0:Lmiuix/provision/ProvisionBaseActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionBaseActivity;->updateButtonState(Z)V

    return-void
.end method
