.class public final enum Lmiui/cloud/common/XDeviceInfo$PhoneType;
.super Ljava/lang/Enum;
.source "XDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/common/XDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/cloud/common/XDeviceInfo$PhoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/cloud/common/XDeviceInfo$PhoneType;

.field public static final enum PAD:Lmiui/cloud/common/XDeviceInfo$PhoneType;

.field public static final enum PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    const/4 v1, 0x0

    const-string v2, "pad"

    const-string v3, "PAD"

    invoke-direct {v0, v3, v1, v2}, Lmiui/cloud/common/XDeviceInfo$PhoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PAD:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 27
    new-instance v1, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    const/4 v2, 0x1

    const-string v3, "phone"

    const-string v4, "PHONE"

    invoke-direct {v1, v4, v2, v3}, Lmiui/cloud/common/XDeviceInfo$PhoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 25
    filled-new-array {v0, v1}, [Lmiui/cloud/common/XDeviceInfo$PhoneType;

    move-result-object v0

    sput-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->$VALUES:[Lmiui/cloud/common/XDeviceInfo$PhoneType;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/cloud/common/XDeviceInfo$PhoneType;
    .locals 1

    .line 25
    const-class v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    return-object p0
.end method

.method public static values()[Lmiui/cloud/common/XDeviceInfo$PhoneType;
    .locals 1

    .line 25
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->$VALUES:[Lmiui/cloud/common/XDeviceInfo$PhoneType;

    invoke-virtual {v0}, [Lmiui/cloud/common/XDeviceInfo$PhoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/cloud/common/XDeviceInfo$PhoneType;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->mDesc:Ljava/lang/String;

    return-object p0
.end method
