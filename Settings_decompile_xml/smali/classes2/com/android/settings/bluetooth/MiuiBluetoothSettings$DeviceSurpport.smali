.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;
.super Ljava/lang/Object;
.source "MiuiBluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceSurpport"
.end annotation


# instance fields
.field public mConfig:Ljava/lang/String;

.field public mPlugin:Ljava/lang/String;

.field private requestedConfig:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetrequestedConfig(Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;->requestedConfig:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;->mConfig:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;->mPlugin:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;->requestedConfig:Ljava/lang/String;

    return-void
.end method
