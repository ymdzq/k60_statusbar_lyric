.class public final enum Lcom/xiaomi/onetrack/OneTrack$NetType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/OneTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/onetrack/OneTrack$NetType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field public static final enum WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

.field private static final synthetic b:[Lcom/xiaomi/onetrack/OneTrack$NetType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 71
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const-string v3, "NOT_CONNECTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 72
    new-instance v1, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const/4 v2, 0x1

    const-string v3, "2G"

    const-string v4, "MOBILE_2G"

    invoke-direct {v1, v4, v2, v3}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 73
    new-instance v2, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const/4 v3, 0x2

    const-string v4, "3G"

    const-string v5, "MOBILE_3G"

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 74
    new-instance v3, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const/4 v4, 0x3

    const-string v5, "4G"

    const-string v6, "MOBILE_4G"

    invoke-direct {v3, v6, v4, v5}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 75
    new-instance v4, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const/4 v5, 0x4

    const-string v6, "5G"

    const-string v7, "MOBILE_5G"

    invoke-direct {v4, v7, v5, v6}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 76
    new-instance v5, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v6, "WIFI"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v6}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/xiaomi/onetrack/OneTrack$NetType;->WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 77
    new-instance v6, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v7, "ETHERNET"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v7}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/xiaomi/onetrack/OneTrack$NetType;->ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 78
    new-instance v7, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v8, "UNKNOWN"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v8}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/xiaomi/onetrack/OneTrack$NetType;->UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 79
    new-instance v8, Lcom/xiaomi/onetrack/OneTrack$NetType;

    const-string v9, "CONNECTED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v9}, Lcom/xiaomi/onetrack/OneTrack$NetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/xiaomi/onetrack/OneTrack$NetType;->CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 70
    filled-new-array/range {v0 .. v8}, [Lcom/xiaomi/onetrack/OneTrack$NetType;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->b:[Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-object p3, p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$NetType;
    .locals 1

    .line 70
    const-class v0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$NetType;
    .locals 1

    .line 70
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->b:[Lcom/xiaomi/onetrack/OneTrack$NetType;

    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$NetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->a:Ljava/lang/String;

    return-object p0
.end method
