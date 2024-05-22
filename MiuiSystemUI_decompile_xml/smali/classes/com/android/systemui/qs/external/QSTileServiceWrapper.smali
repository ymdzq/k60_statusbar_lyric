.class public final Lcom/android/systemui/qs/external/QSTileServiceWrapper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
