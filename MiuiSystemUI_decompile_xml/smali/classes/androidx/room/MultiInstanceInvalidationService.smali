.class public Landroidx/room/MultiInstanceInvalidationService;
.super Landroid/app/Service;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBinder:Landroidx/room/MultiInstanceInvalidationService$2;

.field public final mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

.field public final mClientNames:Ljava/util/HashMap;

.field public mMaxClientId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/room/MultiInstanceInvalidationService;->mMaxClientId:I

    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->mClientNames:Ljava/util/HashMap;

    .line 13
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$1;

    .line 15
    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$1;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    .line 17
    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

    .line 20
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$2;

    .line 22
    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$2;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    .line 24
    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->mBinder:Landroidx/room/MultiInstanceInvalidationService$2;

    .line 27
    return-void
    .line 29
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->mBinder:Landroidx/room/MultiInstanceInvalidationService$2;

    .line 2
    return-object p0
    .line 4
.end method
