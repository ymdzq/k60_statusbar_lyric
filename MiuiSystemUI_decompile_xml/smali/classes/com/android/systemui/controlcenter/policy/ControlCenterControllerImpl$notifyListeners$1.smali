.class public final Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$notifyListeners$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$notifyListeners$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$notifyListeners$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->listeners:Ljava/util/ArrayList;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;

    .line 20
    iget-boolean v2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 22
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;->onUseControlCenterChange(Z)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method
