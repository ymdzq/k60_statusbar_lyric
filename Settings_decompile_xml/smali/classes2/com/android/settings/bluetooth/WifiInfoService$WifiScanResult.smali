.class Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;
.super Ljava/lang/Object;
.source "WifiInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/WifiInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScanResult"
.end annotation


# instance fields
.field private is24G:Z

.field private is5G:Z

.field private mFrequency:I

.field final synthetic this$0:Lcom/android/settings/bluetooth/WifiInfoService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFrequency(Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->mFrequency:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mis245G(Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->is245G()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/android/settings/bluetooth/WifiInfoService;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 359
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->is24G:Z

    .line 360
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->is5G:Z

    const/4 p1, -0x1

    .line 361
    iput p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->mFrequency:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/WifiInfoService;Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;-><init>(Lcom/android/settings/bluetooth/WifiInfoService;)V

    return-void
.end method

.method private is245G()Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->is24G:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->is5G:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method setFrequency(I)V
    .locals 2

    const/16 v0, 0x961

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    const/16 v0, 0x9c3

    if-ge p1, v0, :cond_0

    .line 370
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->is24G:Z

    :cond_0
    const/16 v0, 0x1325

    if-le p1, v0, :cond_1

    const/16 v0, 0x170b

    if-ge p1, v0, :cond_1

    .line 373
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->is5G:Z

    .line 375
    :cond_1
    iput p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->mFrequency:I

    return-void
.end method
