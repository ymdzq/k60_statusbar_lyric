.class Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;
.super Ljava/lang/Object;
.source "BaseResponseStateManager.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/responsive/page/manager/BaseResponseStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseLifecycleObserver"
.end annotation


# instance fields
.field private mBaseResponseStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

.field final synthetic this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method public constructor <init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Lmiuix/responsive/page/manager/BaseResponseStateManager;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;->mBaseResponseStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 0
    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 268
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;->mBaseResponseStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->destroy()V

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponseLifecycleObserver;->mBaseResponseStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    return-void
.end method
