.class Lcom/android/settings/bootloader/BootloaderStatusActivity$BindTask;
.super Landroid/os/AsyncTask;
.source "BootloaderStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bootloader/BootloaderStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/bootloader/Utils$RetType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bootloader/BootloaderStatusActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bootloader/BootloaderStatusActivity;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity$BindTask;->this$0:Lcom/android/settings/bootloader/BootloaderStatusActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Lcom/android/settings/bootloader/Utils$RetType;
    .locals 0

    const/4 p0, 0x0

    .line 234
    aget-object p0, p1, p0

    .line 235
    new-instance p1, Lcom/android/settings/bootloader/Utils$RetType;

    invoke-direct {p1}, Lcom/android/settings/bootloader/Utils$RetType;-><init>()V

    .line 237
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/bootloader/CloudDeviceStatus;->bindAccountWithDevice(Landroid/content/Context;)Lcom/android/settings/bootloader/Utils$RetType;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/settings/bootloader/Utils$AccountExcepiton; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x3

    .line 241
    iput p0, p1, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    goto :goto_0

    :catch_1
    const/4 p0, 0x1

    .line 239
    iput p0, p1, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 230
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/settings/bootloader/BootloaderStatusActivity$BindTask;->doInBackground([Landroid/content/Context;)Lcom/android/settings/bootloader/Utils$RetType;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/settings/bootloader/Utils$RetType;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity$BindTask;->this$0:Lcom/android/settings/bootloader/BootloaderStatusActivity;

    invoke-static {v0}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->-$$Nest$fgetmBtn(Lcom/android/settings/bootloader/BootloaderStatusActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity$BindTask;->this$0:Lcom/android/settings/bootloader/BootloaderStatusActivity;

    invoke-static {v0}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->-$$Nest$fgetmBtn(Lcom/android/settings/bootloader/BootloaderStatusActivity;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 250
    iget-object p0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity$BindTask;->this$0:Lcom/android/settings/bootloader/BootloaderStatusActivity;

    iget v0, p1, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    iget-object p1, p1, Lcom/android/settings/bootloader/Utils$RetType;->retMsg:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->-$$Nest$mnotifyUser(Lcom/android/settings/bootloader/BootloaderStatusActivity;ILjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p1, Lcom/android/settings/bootloader/Utils$RetType;

    invoke-virtual {p0, p1}, Lcom/android/settings/bootloader/BootloaderStatusActivity$BindTask;->onPostExecute(Lcom/android/settings/bootloader/Utils$RetType;)V

    return-void
.end method
