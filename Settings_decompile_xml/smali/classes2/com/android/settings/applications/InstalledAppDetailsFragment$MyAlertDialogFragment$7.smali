.class Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$7;
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

    .line 1145
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$7;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1148
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$7;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$fgetmPrefFloatingWindowSwitch(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$7;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-static {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->-$$Nest$fgetmIsFloatingWindowEnabled(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
