.class public final Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;
.super Lcom/android/wm/shell/pip/IPip$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# instance fields
.field public mController:Lcom/android/wm/shell/pip/phone/PipController;

.field public final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field public final mPipAnimationListener:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/pip/IPip$Stub;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;-><init>(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;)V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mPipAnimationListener:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    .line 12
    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 14
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda9;

    .line 16
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 19
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;

    .line 22
    invoke-direct {v3, v2}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;-><init>(I)V

    .line 24
    invoke-direct {v0, p1, v1, v3}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 27
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 30
    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    .line 7
    return-void
    .line 10
.end method
