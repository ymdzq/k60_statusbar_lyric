.class Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$9;
.super Ljava/lang/Object;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$9;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1162
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$9;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object p0

    const/16 p1, 0xa

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$mshowDialogInner(Lcom/android/settings/applications/InstalledAppDetailsFragment;II)V

    return-void
.end method
