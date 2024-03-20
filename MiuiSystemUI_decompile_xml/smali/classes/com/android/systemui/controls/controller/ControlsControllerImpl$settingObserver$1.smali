.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final onChange(ZLjava/util/Collection;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 2
    iget-boolean p2, p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    .line 4
    if-nez p2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getCurrentUserId()I

    .line 8
    move-result p1

    .line 11
    if-eq p4, p1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->resetFavorites()V

    .line 17
    :cond_1
    :goto_0
    return-void
    .line 20
.end method
