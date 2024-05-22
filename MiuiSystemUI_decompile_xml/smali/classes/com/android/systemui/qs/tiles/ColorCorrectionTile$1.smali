.class public final Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;
.super Lcom/android/systemui/qs/SettingObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/ColorCorrectionTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ColorCorrectionTile;Lcom/android/systemui/util/settings/SettingsProxy;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorCorrectionTile;

    .line 2
    const-string p1, "accessibility_display_daltonizer_enabled"

    .line 4
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ColorCorrectionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorCorrectionTile;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method
