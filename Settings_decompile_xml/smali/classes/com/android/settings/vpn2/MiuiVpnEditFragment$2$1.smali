.class Lcom/android/settings/vpn2/MiuiVpnEditFragment$2$1;
.super Ljava/lang/Object;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$2$1;->this$1:Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$2$1;->this$1:Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;

    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;->this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->onSave(Z)V

    return-void
.end method
