.class public final enum Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;
.super Ljava/lang/Enum;
.source "MiuiAboutPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/MiuiAboutPhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneConfigurationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

.field public static final enum ENJOY_VERSIION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

.field public static final enum HIGH_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

.field public static final enum LOW_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

.field public static final enum STANDARD_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;
    .locals 4

    .line 127
    sget-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->LOW_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    sget-object v1, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->STANDARD_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    sget-object v2, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->HIGH_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    sget-object v3, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->ENJOY_VERSIION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 128
    new-instance v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    const-string v1, "LOW_CONFIGURATION_VERSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->LOW_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    new-instance v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    const-string v1, "STANDARD_CONFIGURATION_VERSION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->STANDARD_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    new-instance v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    const-string v1, "HIGH_CONFIGURATION_VERSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->HIGH_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    new-instance v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    const-string v1, "ENJOY_VERSIION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->ENJOY_VERSIION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    .line 127
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->$values()[Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    move-result-object v0

    sput-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->$VALUES:[Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;
    .locals 1

    .line 127
    const-class v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;
    .locals 1

    .line 127
    sget-object v0, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->$VALUES:[Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    invoke-virtual {v0}, [Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    return-object v0
.end method
