.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$30;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showDownloadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 3960
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$30;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 3963
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$30;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmOTAState(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3964
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$30;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->handle_ota_updating_tip:I

    invoke-static {p1, v1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 3966
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$30;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmOTAState(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    return-void
.end method
