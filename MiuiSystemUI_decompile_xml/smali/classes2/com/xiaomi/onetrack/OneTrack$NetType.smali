.class public final enum Lcom/xiaomi/onetrack/OneTrack$NetType;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final enum ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final synthetic b:[Lcom/xiaomi/onetrack/OneTrack$NetType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 2
    const-string v1, "NONE"

    .line 4
    const-string v2, "NOT_CONNECTED"

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 12
    new-instance v1, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 14
    const-string v2, "2G"

    .line 16
    const-string v3, "MOBILE_2G"

    .line 18
    const/4 v4, 0x1

    .line 20
    invoke-direct {v1, v3, v2, v4}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    sput-object v1, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 24
    new-instance v2, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 26
    const-string v3, "3G"

    .line 28
    const-string v4, "MOBILE_3G"

    .line 30
    const/4 v5, 0x2

    .line 32
    invoke-direct {v2, v4, v3, v5}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    sput-object v2, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 36
    new-instance v3, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 38
    const-string v4, "4G"

    .line 40
    const-string v5, "MOBILE_4G"

    .line 42
    const/4 v6, 0x3

    .line 44
    invoke-direct {v3, v5, v4, v6}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sput-object v3, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 48
    new-instance v4, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 50
    const-string v5, "5G"

    .line 52
    const-string v6, "MOBILE_5G"

    .line 54
    const/4 v7, 0x4

    .line 56
    invoke-direct {v4, v6, v5, v7}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sput-object v4, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 60
    new-instance v5, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 62
    const-string v6, "WIFI"

    .line 64
    const/4 v7, 0x5

    .line 66
    invoke-direct {v5, v6, v6, v7}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sput-object v5, Lcom/xiaomi/onetrack/OneTrack$NetType;->WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 70
    new-instance v6, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 72
    const-string v7, "ETHERNET"

    .line 74
    const/4 v8, 0x6

    .line 76
    invoke-direct {v6, v7, v7, v8}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sput-object v6, Lcom/xiaomi/onetrack/OneTrack$NetType;->ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 80
    new-instance v7, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 82
    const-string v8, "UNKNOWN"

    .line 84
    const/4 v9, 0x7

    .line 86
    invoke-direct {v7, v8, v8, v9}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sput-object v7, Lcom/xiaomi/onetrack/OneTrack$NetType;->UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 90
    new-instance v8, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 92
    const-string v9, "CONNECTED"

    .line 94
    const/16 v10, 0x8

    .line 96
    invoke-direct {v8, v9, v9, v10}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    filled-new-array/range {v0 .. v8}, [Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 101
    move-result-object v0

    .line 104
    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->b:[Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 105
    return-void
    .line 107
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->a:Ljava/lang/String;

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$NetType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$NetType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->b:[Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 2
    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$NetType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->a:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
