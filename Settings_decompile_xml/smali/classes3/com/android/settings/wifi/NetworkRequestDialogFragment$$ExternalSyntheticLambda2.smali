.class public final synthetic Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

.field public final synthetic f$1:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;->f$1:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;->f$1:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0, p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->$r8$lambda$i9XHvdDC4Zs4Qnfh2L5Si_5-e3g(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
