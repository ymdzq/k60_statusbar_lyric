.class public final enum Lmiui/cloud/common/XDeviceInfo$KeyStoreType;
.super Ljava/lang/Enum;
.source "XDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/common/XDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyStoreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/cloud/common/XDeviceInfo$KeyStoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

.field public static final enum NONE:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

.field public static final enum TZ:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    const-string v1, "TZ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->TZ:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    new-instance v1, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    const-string v2, "NONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->NONE:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    .line 40
    filled-new-array {v0, v1}, [Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    move-result-object v0

    sput-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->$VALUES:[Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/cloud/common/XDeviceInfo$KeyStoreType;
    .locals 1

    .line 40
    const-class v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-object p0
.end method

.method public static values()[Lmiui/cloud/common/XDeviceInfo$KeyStoreType;
    .locals 1

    .line 40
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->$VALUES:[Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    invoke-virtual {v0}, [Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->mDesc:Ljava/lang/String;

    return-object p0
.end method
