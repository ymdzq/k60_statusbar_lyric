.class final Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener;
.super Ljava/lang/Object;
.source "BCProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BCProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BassclientServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BCProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BCProfile;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/BCProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BCProfile;Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/BCProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "BCProfile"

    const-string v0, "BassclientService connected"

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/BCProfile;

    check-cast p2, Landroid/bluetooth/BluetoothSyncHelper;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/BCProfile;->-$$Nest$fputmService(Lcom/android/settingslib/bluetooth/BCProfile;Landroid/bluetooth/BluetoothSyncHelper;)V

    .line 75
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/BCProfile;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/BCProfile;->-$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/BCProfile;Z)V

    .line 76
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/BCProfile;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BCProfile;->-$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/BCProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "BCProfile"

    const-string v0, "BassclientService disconnected"

    .line 80
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BCProfile$BassclientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/BCProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BCProfile;->-$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/BCProfile;Z)V

    return-void
.end method
