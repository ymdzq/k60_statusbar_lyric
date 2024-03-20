.class Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;
.super Ljava/lang/Object;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 223
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;->this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 226
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;->this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-static {v0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->-$$Nest$fgetmContext(Lcom/android/settings/vpn2/MiuiVpnEditFragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->vpn_menu_delete:I

    .line 227
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment$2$1;-><init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;)V

    const v1, 0x104000a    # @android:string/ok

    .line 228
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 237
    new-instance v0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$2$2;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment$2$2;-><init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
