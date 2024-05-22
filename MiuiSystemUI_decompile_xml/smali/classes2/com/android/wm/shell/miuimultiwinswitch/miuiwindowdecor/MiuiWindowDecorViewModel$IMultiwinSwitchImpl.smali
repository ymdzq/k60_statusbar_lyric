.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;
.super Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitch$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# instance fields
.field private mController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

.field private final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field private final mMultiwinSwitchListener:Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;


# direct methods
.method public static synthetic $r8$lambda$0p0smgncEX1uEOVfCkYzJJ9ZxhM(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->lambda$new$0(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$1-j67uOWnXn7INyNZ5cqtKcHZoE(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->lambda$new$1(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$dUghkVvJq9j1f7U79BWgQ3R9nSE(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->lambda$registerMultiwinSwitchListener$2(Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$m3ySNu_N8_LeHuZepaXXKZz8ikw(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->lambda$unregisterMultiwinSwitchListener$3(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 2
    return-object p0
    .line 4
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitch$Stub;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;)V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mMultiwinSwitchListener:Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 12
    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 14
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl$$ExternalSyntheticLambda0;

    .line 16
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;I)V

    .line 19
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl$$ExternalSyntheticLambda0;

    .line 22
    const/4 v3, 0x1

    .line 24
    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;I)V

    .line 25
    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 31
    return-void
    .line 33
.end method

.method private synthetic lambda$new$0(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mMultiwinSwitchListener:Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->registerMultiwinSwitchListener(Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;)V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$new$1(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mMultiwinSwitchListener:Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->unregisterMultiwinSwitchListener(Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;)V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$registerMultiwinSwitchListener$2(Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->register(Landroid/os/IInterface;)V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$unregisterMultiwinSwitchListener$3(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    .line 7
    return-void
    .line 10
.end method

.method public registerMultiwinSwitchListener(Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl$$ExternalSyntheticLambda1;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener;)V

    .line 6
    const/4 p0, 0x0

    .line 9
    const-string p1, "registerMultiwinSwitchListener"

    .line 10
    invoke-static {v0, p1, v1, p0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 12
    return-void
    .line 15
.end method

.method public unregisterMultiwinSwitchListener(Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;->mController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl$$ExternalSyntheticLambda0;

    .line 4
    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;I)V

    .line 7
    const/4 p0, 0x0

    .line 10
    const-string/jumbo v1, "unregisterMultiwinSwitchListener"

    .line 11
    invoke-static {p1, v1, v0, p0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 14
    return-void
    .line 17
.end method
