.class final enum Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;
.super Ljava/lang/Enum;
.source "DefalutApplicationLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DefalutApplicationLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DefaultPackageConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

.field public static final enum BROWSER_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

.field public static final enum CAMERA_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

.field public static final enum DIALER_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

.field public static final enum EMAIL_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

.field public static final enum GALLERY_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

.field public static final enum MMS_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

.field public static final enum MUSIC_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

.field public static final enum VIDEO_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;


# instance fields
.field public final arrayID:I

.field public final intentFlag:I


# direct methods
.method private static synthetic $values()[Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;
    .locals 8

    .line 36
    sget-object v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->MMS_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget-object v1, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->DIALER_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget-object v2, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->BROWSER_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget-object v3, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->GALLERY_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget-object v4, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->CAMERA_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget-object v5, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->MUSIC_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget-object v6, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->EMAIL_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget-object v7, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->VIDEO_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    filled-new-array/range {v0 .. v7}, [Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget v1, Lcom/android/settings/R$array;->default_mms_package:I

    const-string v2, "MMS_ARRAY"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->MMS_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    .line 40
    new-instance v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    const/4 v1, 0x1

    sget v2, Lcom/android/settings/R$array;->default_dialer_package:I

    const-string v3, "DIALER_ARRAY"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->DIALER_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    .line 42
    new-instance v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    const/4 v1, 0x2

    sget v2, Lcom/android/settings/R$array;->defalut_browser_package:I

    const-string v3, "BROWSER_ARRAY"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->BROWSER_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    .line 44
    new-instance v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget v1, Lcom/android/settings/R$array;->default_gallery_package:I

    const-string v2, "GALLERY_ARRAY"

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->GALLERY_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    .line 46
    new-instance v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    const/4 v1, 0x4

    sget v2, Lcom/android/settings/R$array;->default_camera_package:I

    const-string v3, "CAMERA_ARRAY"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->CAMERA_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    .line 48
    new-instance v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget v1, Lcom/android/settings/R$array;->default_music_package:I

    const-string v2, "MUSIC_ARRAY"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->MUSIC_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    .line 50
    new-instance v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget v1, Lcom/android/settings/R$array;->default_email_package:I

    const-string v2, "EMAIL_ARRAY"

    const/4 v4, 0x7

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->EMAIL_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    .line 52
    new-instance v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    sget v1, Lcom/android/settings/R$array;->default_video_package:I

    const/16 v2, 0x8

    const-string v3, "VIDEO_ARRAY"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->VIDEO_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    .line 36
    invoke-static {}, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->$values()[Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->$VALUES:[Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->arrayID:I

    .line 59
    iput p4, p0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->intentFlag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;
    .locals 1

    .line 36
    const-class v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;
    .locals 1

    .line 36
    sget-object v0, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->$VALUES:[Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    invoke-virtual {v0}, [Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    return-object v0
.end method
