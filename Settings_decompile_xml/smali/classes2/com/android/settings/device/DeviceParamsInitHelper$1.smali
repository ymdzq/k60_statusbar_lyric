.class synthetic Lcom/android/settings/device/DeviceParamsInitHelper$1;
.super Ljava/lang/Object;
.source "DeviceParamsInitHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/DeviceParamsInitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$device$MiuiAboutPhoneUtils$PhoneConfigurationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->values()[Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/device/DeviceParamsInitHelper$1;->$SwitchMap$com$android$settings$device$MiuiAboutPhoneUtils$PhoneConfigurationType:[I

    :try_start_0
    sget-object v1, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->STANDARD_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/settings/device/DeviceParamsInitHelper$1;->$SwitchMap$com$android$settings$device$MiuiAboutPhoneUtils$PhoneConfigurationType:[I

    sget-object v1, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->HIGH_CONFIGURATION_VERSION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/settings/device/DeviceParamsInitHelper$1;->$SwitchMap$com$android$settings$device$MiuiAboutPhoneUtils$PhoneConfigurationType:[I

    sget-object v1, Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;->ENJOY_VERSIION:Lcom/android/settings/device/MiuiAboutPhoneUtils$PhoneConfigurationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
