.class public abstract Lcom/android/systemui/statusbar/notification/focus/FocusConst$Pkg;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sSaveDelPkgs:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "com.autonavi.minimap"

    .line 2
    const-string v1, "com.sankuai.meituan"

    .line 4
    const-string v2, "com.sankuai.meituan.takeoutnew"

    .line 6
    const-string v3, "me.ele"

    .line 8
    const-string v4, "com.android.keyguard"

    .line 10
    const-string v5, "com.eg.android.AlipayGphone"

    .line 12
    invoke-static/range {v0 .. v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/systemui/statusbar/notification/focus/FocusConst$Pkg;->sSaveDelPkgs:Ljava/util/List;

    .line 18
    return-void
    .line 20
.end method
