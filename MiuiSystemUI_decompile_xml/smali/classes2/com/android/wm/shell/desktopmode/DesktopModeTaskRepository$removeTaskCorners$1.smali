.class public final Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionListener:Ljava/util/function/Consumer;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->access$calculateDesktopExclusionRegion(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)Landroid/graphics/Region;

    .line 14
    move-result-object p0

    .line 17
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-void

    .line 21
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionListener:Ljava/util/function/Consumer;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->access$calculateDesktopExclusionRegion(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)Landroid/graphics/Region;

    .line 28
    move-result-object p0

    .line 31
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 32
    :cond_1
    return-void

    .line 35
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeTaskCorners$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionListener:Ljava/util/function/Consumer;

    .line 38
    if-eqz v0, :cond_2

    .line 40
    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->access$calculateDesktopExclusionRegion(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)Landroid/graphics/Region;

    .line 42
    move-result-object p0

    .line 45
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 46
    :cond_2
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 50
.end method
