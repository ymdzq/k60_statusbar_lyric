# classes5.dex

.class synthetic Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$2;
.super Ljava/lang/Object;
.source "MiuiStatusBarLyricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 73
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->values()[Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$2;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    :try_start_9
    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->LYRIC_HANDLER:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$2;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SHOW_BLUETHOOTH_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$2;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_SYSTEM_STATUSBAR_LYRIC:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    return-void
.end method
