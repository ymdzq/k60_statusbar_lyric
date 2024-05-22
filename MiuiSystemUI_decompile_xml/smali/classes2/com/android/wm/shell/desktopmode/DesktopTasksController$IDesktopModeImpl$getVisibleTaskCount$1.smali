.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$getVisibleTaskCount$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $displayId:I

.field public final synthetic $result:[I


# direct methods
.method public constructor <init>(I[I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$getVisibleTaskCount$1;->$result:[I

    .line 2
    iput p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$getVisibleTaskCount$1;->$displayId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$getVisibleTaskCount$1;->$result:[I

    .line 4
    iget p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$getVisibleTaskCount$1;->$displayId:I

    .line 6
    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    .line 10
    move-result p0

    .line 13
    const/4 p1, 0x0

    .line 14
    aput p0, v0, p1

    .line 15
    return-void
    .line 17
.end method
