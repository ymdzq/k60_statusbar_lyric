.class Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;
.super Ljava/lang/Object;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Lcom/android/settings/vpn2/VpnCheckBox$CheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/MiuiVpnEditFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;->this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;->this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->options:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;->this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-static {v1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->-$$Nest$fgetmOptions(Lcom/android/settings/vpn2/MiuiVpnEditFragment;)Lcom/android/settings/vpn2/VpnCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;->this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-static {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->-$$Nest$fgetmOptions(Lcom/android/settings/vpn2/MiuiVpnEditFragment;)Lcom/android/settings/vpn2/VpnCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnCheckBox;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->-$$Nest$fputmChoice(Lcom/android/settings/vpn2/MiuiVpnEditFragment;Z)V

    return-void
.end method
