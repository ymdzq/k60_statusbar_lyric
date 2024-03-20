.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionOTA"
.end annotation


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/DeviceProfilesSettings;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method public static synthetic $r8$lambda$clwgJHOQIURQXlPV-313EN-WbQs(Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->lambda$onServiceConnected$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 3978
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3979
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0()V
    .locals 2

    .line 3991
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmFirmwareVersion(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmUpdateConfig(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3994
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmUpdateConfig(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmFirmwareVersion(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 3995
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmUpdateConfig(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .line 3984
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->activity:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 3988
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    .line 3989
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object p2, p1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;->checkSupport(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p2, "DeviceProfilesSettings"

    if-eqz p1, :cond_7

    .line 3990
    :try_start_1
    new-instance p1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 3999
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "MiuiBTOTAFW"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4000
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "end"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ";"

    .line 4001
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4002
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    aget-object v0, p1, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, p1, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_3

    .line 4005
    :try_start_2
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4007
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v3, 0x0

    .line 4009
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4010
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "time check last "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " current "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr v3, v5

    .line 4011
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    goto :goto_1

    .line 4015
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :cond_3
    :goto_2
    const-wide/16 v2, 0x32

    const/16 p1, 0x192

    if-eqz v1, :cond_5

    .line 4021
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4022
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;->checkDeviceFirmware(Ljava/lang/String;)Z

    goto :goto_3

    .line 4024
    :cond_4
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmOTAHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 4025
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 4026
    iput p1, p2, Landroid/os/Message;->what:I

    .line 4027
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmOTAHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;

    move-result-object p0

    invoke-virtual {p0, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 4031
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmUpdateBtn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4032
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmUpdateBtn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, "last is much too neary. hiden update button"

    .line 4033
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    :cond_6
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p2

    if-nez p2, :cond_8

    .line 4036
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmOTAHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 4037
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 4038
    iput p1, p2, Landroid/os/Message;->what:I

    .line 4039
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmOTAHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;

    move-result-object p0

    invoke-virtual {p0, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_7
    const-string/jumbo p1, "not ota support devices"

    .line 4044
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mcleanUpOTA(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 4048
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "DeviceProfilesSettings"

    const-string p1, "mBleOTADisconnected "

    .line 4054
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
