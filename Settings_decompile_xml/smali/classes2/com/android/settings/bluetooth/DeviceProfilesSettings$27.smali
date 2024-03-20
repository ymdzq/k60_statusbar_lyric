.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$27;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createDialogForOpenAudioRepair()V
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

    .line 3776
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$27;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 3779
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$27;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmAudioRepairDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method
