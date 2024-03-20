.class Lcom/android/settings/EncryptionSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "EncryptionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EncryptionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/EncryptionSettings;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/EncryptionSettings$1;->this$0:Lcom/android/settings/EncryptionSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo p1, "vold_status"

    const/4 v0, -0x1

    .line 57
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/settings/EncryptionSettings$1;->this$0:Lcom/android/settings/EncryptionSettings;

    invoke-static {p0}, Lcom/android/settings/EncryptionSettings;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/EncryptionSettings;)Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->tryToDismiss()V

    :goto_0
    return-void
.end method
