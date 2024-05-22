.class public final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic $action:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->$action:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 2

    .line 1
    const-string v0, "ControlsUiController"

    .line 2
    const-string v1, "Device unlocked, invoking controls action"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->$action:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->invoke()V

    .line 11
    const/4 p0, 0x1

    .line 14
    return p0
    .line 15
.end method
