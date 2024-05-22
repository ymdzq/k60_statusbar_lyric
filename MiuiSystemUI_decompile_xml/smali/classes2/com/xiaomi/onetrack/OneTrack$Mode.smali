.class public final enum Lcom/xiaomi/onetrack/OneTrack$Mode;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final enum APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field public static final enum PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field public static final enum SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field public static final synthetic b:[Lcom/xiaomi/onetrack/OneTrack$Mode;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 2
    const/4 v1, 0x0

    .line 4
    const-string v2, "app"

    .line 5
    const-string v3, "APP"

    .line 7
    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 12
    new-instance v1, Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 14
    const/4 v2, 0x1

    .line 16
    const-string v3, "plugin"

    .line 17
    const-string v4, "PLUGIN"

    .line 19
    invoke-direct {v1, v4, v3, v2}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    sput-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 24
    new-instance v2, Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 26
    const/4 v3, 0x2

    .line 28
    const-string v4, "sdk"

    .line 29
    const-string v5, "SDK"

    .line 31
    invoke-direct {v2, v5, v4, v3}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    sput-object v2, Lcom/xiaomi/onetrack/OneTrack$Mode;->SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 36
    filled-new-array {v0, v1, v2}, [Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 38
    move-result-object v0

    .line 41
    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->b:[Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 42
    return-void
    .line 44
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->a:Ljava/lang/String;

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->b:[Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 2
    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$Mode;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->a:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
