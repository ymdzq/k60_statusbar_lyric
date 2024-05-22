.class final Lcom/android/systemui/qs/QSTileHostExt$qsStockTiles$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHostExt;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHostExt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt$qsStockTiles$2;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

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
    .locals 3

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 2
    const v1, 0x7f130780    # @string/miui_quick_settings_tiles_stock_pad 'vowifi1,vowifi2,googlehome,googlepay,cell,wifi,rotation,airplane,mute,screenshot,bt,autobrightness,s ...'

    .line 4
    if-eqz v0, :cond_0

    .line 7
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 9
    if-eqz v2, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$qsStockTiles$2;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->context:Landroid/content/Context;

    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v2, 0x7f13077f    # @string/miui_quick_settings_tiles_stock 'vowifi1,vowifi2,googlehome,googlepay,cell,wifi,bt,airplane,autobrightness,mute,screenshot,flashlight ...'

    .line 22
    if-eqz v0, :cond_1

    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$qsStockTiles$2;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->context:Landroid/content/Context;

    .line 29
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$qsStockTiles$2;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->context:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$qsStockTiles$2;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->context:Landroid/content/Context;

    .line 51
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    :goto_0
    return-object p0
    .line 57
.end method
