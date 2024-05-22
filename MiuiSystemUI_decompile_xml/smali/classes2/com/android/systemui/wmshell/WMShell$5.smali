.class public final Lcom/android/systemui/wmshell/WMShell$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher$WindowDecorRectListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wmshell/WMShell;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$5;->this$0:Lcom/android/systemui/wmshell/WMShell;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onWindowDecorRectChanged(Ljava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "onWindowDecorRectChanged"

    .line 2
    if-eqz p1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v2, "start size:"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    move-result v2

    .line 32
    if-ge v1, v2, :cond_1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v3, "windowDecorRects: "

    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 53
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_0

    .line 59
    :cond_0
    const-string/jumbo v1, "windowDecorRects:   null"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$5;->this$0:Lcom/android/systemui/wmshell/WMShell;

    .line 66
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;->mMultiTaskStatusBarDotsAreaController:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;

    .line 70
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;->updateDotsArea(Ljava/util/List;)V

    .line 72
    return-void
    .line 75
.end method
