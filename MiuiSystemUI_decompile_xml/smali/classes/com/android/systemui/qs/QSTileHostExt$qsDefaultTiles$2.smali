.class final Lcom/android/systemui/qs/QSTileHostExt$qsDefaultTiles$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHostExt;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHostExt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt$qsDefaultTiles$2;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$qsDefaultTiles$2;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->context:Landroid/content/Context;

    .line 12
    const v0, 0x7f13077e    # @string/miui_quick_settings_tiles_default_pad_international 'vowifi1,vowifi2,googlehome,googlepay,cell,wifi,bt,airplane,mute,flashlight,screenshot,batterysaver,n ...'

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-eqz v0, :cond_1

    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$qsDefaultTiles$2;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->context:Landroid/content/Context;

    .line 26
    const v0, 0x7f13077c    # @string/miui_quick_settings_tiles_default_international 'vowifi1,vowifi2,googlehome,googlepay,cell,wifi,bt,airplane,mute,flashlight,screenshot,batterysaver,n ...'

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 36
    if-eqz v0, :cond_2

    .line 38
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$qsDefaultTiles$2;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->context:Landroid/content/Context;

    .line 42
    const v0, 0x7f13077d    # @string/miui_quick_settings_tiles_default_pad 'cell,wifi,bt,airplane,mute,flashlight,screenshot,batterysaver,night,rotation,controls,custom(com.miu ...'

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$qsDefaultTiles$2;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->context:Landroid/content/Context;

    .line 54
    const v0, 0x7f13077b    # @string/miui_quick_settings_tiles_default 'cell,wifi,bt,airplane,mute,flashlight,screenshot,batterysaver,night,rotation,controls,custom(com.miu ...'

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    :goto_0
    return-object p0
    .line 63
.end method
