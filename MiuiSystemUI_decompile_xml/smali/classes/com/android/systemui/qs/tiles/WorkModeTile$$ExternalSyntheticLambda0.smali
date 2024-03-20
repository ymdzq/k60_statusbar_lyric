.class public final synthetic Lcom/android/systemui/qs/tiles/WorkModeTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/WorkModeTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WorkModeTile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 4
    const v0, 0x7f130a18    # @string/quick_settings_work_mode_label 'Work apps'

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method
