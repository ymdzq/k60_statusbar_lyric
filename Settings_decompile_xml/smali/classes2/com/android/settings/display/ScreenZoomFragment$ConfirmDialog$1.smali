.class Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog$1;
.super Ljava/lang/Object;
.source "ScreenZoomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog$1;->this$0:Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 393
    iget-object p1, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog$1;->this$0:Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 394
    iget-object p2, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog$1;->this$0:Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 395
    iget-object p0, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog$1;->this$0:Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;

    invoke-static {p0}, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->-$$Nest$fgetmUiMode(Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/display/ScreenZoomUtils;->setZoomLevel(Landroid/content/Context;I)V

    return-void
.end method
