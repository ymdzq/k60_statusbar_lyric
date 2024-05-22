.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $allTasksInZOrder$inlined:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;->$allTasksInZOrder$inlined:Ljava/util/List;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;->$allTasksInZOrder$inlined:Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 6
    move-result p2

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p2

    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;->$allTasksInZOrder$inlined:Ljava/util/List;

    .line 16
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 18
    move-result p0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 25
    invoke-static {p2, p0}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 26
    move-result p0

    .line 29
    return p0
    .line 30
.end method
