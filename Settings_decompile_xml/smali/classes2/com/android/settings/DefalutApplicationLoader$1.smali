.class synthetic Lcom/android/settings/DefalutApplicationLoader$1;
.super Ljava/lang/Object;
.source "DefalutApplicationLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DefalutApplicationLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$DefalutApplicationLoader$DefaultPackageConfig:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    invoke-static {}, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->values()[Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/DefalutApplicationLoader$1;->$SwitchMap$com$android$settings$DefalutApplicationLoader$DefaultPackageConfig:[I

    :try_start_0
    sget-object v1, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->MMS_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/settings/DefalutApplicationLoader$1;->$SwitchMap$com$android$settings$DefalutApplicationLoader$DefaultPackageConfig:[I

    sget-object v1, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->BROWSER_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/settings/DefalutApplicationLoader$1;->$SwitchMap$com$android$settings$DefalutApplicationLoader$DefaultPackageConfig:[I

    sget-object v1, Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;->DIALER_ARRAY:Lcom/android/settings/DefalutApplicationLoader$DefaultPackageConfig;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
