.class public final Lcom/android/systemui/qs/external/QSTileServiceWrapper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mService:Landroid/service/quicksettings/IQSTileService;


# direct methods
.method public constructor <init>(Landroid/service/quicksettings/IQSTileService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 5
    return-void
    .line 7
.end method
