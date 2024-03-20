# classes.dex

.class synthetic Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$3;
.super Ljava/lang/Object;
.source "MiuiStatusLyricView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;
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

    .line 60
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->values()[Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$3;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    :try_start_9
    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_LYRIC_ANIMATION:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$3;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$3;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_PACKAGE_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$3;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_SYSTEM_STATUSBAR_SHOW_APP_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$3;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_STATUSBAR_LYRIC_SIMPLE_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method
