.class public Lcom/android/settings/bluetooth/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;,
        Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;
    }
.end annotation


# static fields
.field public static final PROC_USER_ID:I


# instance fields
.field public mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceLists:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceLists(Lcom/android/settings/bluetooth/LocationUtil;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mDeviceLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/LocationUtil;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationListener(Lcom/android/settings/bluetooth/LocationUtil;)Landroid/location/LocationListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationListener:Landroid/location/LocationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationManager(Lcom/android/settings/bluetooth/LocationUtil;)Landroid/location/LocationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndQuitThread(Lcom/android/settings/bluetooth/LocationUtil;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocationUtil;->checkAndQuitThread()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanUp(Lcom/android/settings/bluetooth/LocationUtil;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocationUtil;->cleanUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLocation(Lcom/android/settings/bluetooth/LocationUtil;Landroid/content/Context;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/LocationUtil;->updateLocation(Landroid/content/Context;Landroid/location/Location;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    sput v0, Lcom/android/settings/bluetooth/LocationUtil;->PROC_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationManager:Landroid/location/LocationManager;

    .line 44
    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mDeviceLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mThread:Landroid/os/HandlerThread;

    .line 46
    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationListener:Landroid/location/LocationListener;

    .line 47
    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private checkAndQuitThread()V
    .locals 2

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "LocationUtil"

    const-string v1, "checkAndQuitThread"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/LocationUtil$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/LocationUtil$1;-><init>(Lcom/android/settings/bluetooth/LocationUtil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 317
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkPermission(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "checkPermission "

    const-string v0, "LocationUtil"

    .line 129
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    .line 131
    invoke-virtual {p1, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    const-string p0, "get permission ACCESS_FINE_LOCATION!!"

    .line 133
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 136
    invoke-virtual {p1, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "get permission ACCESS_COARSE_LOCATION!!"

    .line 138
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private cleanUp()V
    .locals 2

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 325
    iput-object v1, p0, Lcom/android/settings/bluetooth/LocationUtil;->mThread:Landroid/os/HandlerThread;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 328
    iput-object v1, p0, Lcom/android/settings/bluetooth/LocationUtil;->mHandler:Landroid/os/Handler;

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    .line 331
    iput-object v1, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationListener:Landroid/location/LocationListener;

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mDeviceLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    .line 334
    iput-object v1, p0, Lcom/android/settings/bluetooth/LocationUtil;->mDeviceLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    .line 337
    iput-object v1, p0, Lcom/android/settings/bluetooth/LocationUtil;->mContextRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;-><init>(Lcom/android/settings/bluetooth/LocationUtil;Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener-IA;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationListener:Landroid/location/LocationListener;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mDeviceLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    .line 297
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mDeviceLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_1
    if-eqz p1, :cond_2

    .line 300
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mContextRef:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method

.method private isPermitLocationFuction(Landroid/content/Context;)Z
    .locals 2

    .line 114
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocationUtil;->checkPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/android/settings/bluetooth/LocationUtil;->PROC_USER_ID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "#enablebtlocation"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocationUtil"

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPermitLocationFuction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "true"

    .line 118
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeLastLocation(Landroid/content/Context;)V
    .locals 8

    const-string v0, "last_location"

    :try_start_0
    const-string v1, "BluetoothDevice_last_location"

    const/4 v2, 0x4

    .line 163
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 166
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 167
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 168
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "last_location_time"

    const-string v6, "last_location_address"

    if-nez v4, :cond_1

    .line 171
    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x11

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_0

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 182
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static saveLastLocationTime(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 190
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 191
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "BluetoothDevice_last_location"

    const/4 v3, 0x4

    .line 192
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 194
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_location_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private saveLocation(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/location/Location;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 94
    :try_start_0
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 95
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "|"

    .line 98
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, "BluetoothDevice_last_location"

    const/4 v0, 0x4

    .line 100
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 103
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "last_location"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startThread(Landroid/content/Context;)V
    .locals 3

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BtLocationHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mThread:Landroid/os/HandlerThread;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 284
    new-instance v0, Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocationUtil;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;-><init>(Lcom/android/settings/bluetooth/LocationUtil;Landroid/os/Looper;Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler-IA;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mHandler:Landroid/os/Handler;

    .line 286
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocationUtil;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 288
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateLocation(Landroid/content/Context;Landroid/location/Location;)V
    .locals 3

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mDeviceLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationUtil;->mDeviceLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, p1, v1, p2}, Lcom/android/settings/bluetooth/LocationUtil;->saveLocation(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/location/Location;)V

    .line 153
    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/LocationUtil;->saveLastLocationTime(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method


# virtual methods
.method public requestLocation()V
    .locals 10

    const-string v0, "gps"

    const-string/jumbo v1, "network"

    :try_start_0
    const-string v2, ""

    .line 77
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 82
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationListener:Landroid/location/LocationListener;

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public sendMsgGetLocation(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;)V
    .locals 2

    .line 51
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/LocationUtil;->isPermitLocationFuction(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/LocationUtil;->startThread(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mDeviceLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    .line 58
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/android/settings/bluetooth/LocationUtil;->mLocationManager:Landroid/location/LocationManager;

    .line 61
    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/LocationUtil;->mHandler:Landroid/os/Handler;

    .line 62
    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 61
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocationUtil;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    .line 64
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    .line 63
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
