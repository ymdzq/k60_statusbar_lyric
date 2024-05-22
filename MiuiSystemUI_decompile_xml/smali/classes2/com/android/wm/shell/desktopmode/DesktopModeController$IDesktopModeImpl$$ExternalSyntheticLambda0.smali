.class public final synthetic Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda0;->f$0:[I

    .line 5
    iput p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda0;->f$0:[I

    .line 2
    iget p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 6
    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

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
