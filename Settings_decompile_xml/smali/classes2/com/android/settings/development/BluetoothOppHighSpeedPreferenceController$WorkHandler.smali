.class public Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$WorkHandler;
.super Landroid/os/Handler;
.source "BluetoothOppHighSpeedPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$WorkHandler;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothOppHighSpeedPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$WorkHandler;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-static {p0, v0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$msetBluetoothAdapter(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
