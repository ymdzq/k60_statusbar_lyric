.class Lcom/android/wm/shell/onehanded/OneHandedController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 4
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$misInitialized(Lcom/android/wm/shell/onehanded/OneHandedController;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateDisplayLayout(I)V

    .line 15
    :cond_1
    :goto_0
    return-void
    .line 18
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 4

    .line 1
    if-nez p1, :cond_3

    .line 2
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 4
    invoke-static {p2}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$misInitialized(Lcom/android/wm/shell/onehanded/OneHandedController;)Z

    .line 6
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 13
    invoke-static {p2}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmDisplayController(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/DisplayController;

    .line 15
    move-result-object p2

    .line 18
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 19
    move-result-object p2

    .line 22
    iget p2, p2, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 25
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmDisplayController(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/DisplayController;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 31
    move-result-object v0

    .line 34
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 37
    invoke-static {v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmDisplayController(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/DisplayController;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 43
    move-result-object v1

    .line 46
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 47
    int-to-float v1, v1

    .line 49
    const v2, 0x3bcccccd    # 0.00625f

    .line 50
    mul-float/2addr v1, v2

    .line 53
    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 54
    invoke-static {v3}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmState(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedState;

    .line 56
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/android/wm/shell/onehanded/OneHandedState;->isInOneHanded()Z

    .line 60
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 66
    invoke-static {v3}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmDisplayAreaOrganizer(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 68
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 72
    move-result-object v3

    .line 75
    iget v3, v3, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 76
    if-ne p2, v3, :cond_1

    .line 78
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 80
    invoke-static {p2}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmDisplayAreaOrganizer(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 82
    move-result-object p2

    .line 85
    invoke-virtual {p2}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 86
    move-result-object p2

    .line 89
    iget p2, p2, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 90
    if-ne v0, p2, :cond_1

    .line 92
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 94
    invoke-static {p2}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmDisplayAreaOrganizer(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 96
    move-result-object p2

    .line 99
    invoke-virtual {p2}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 100
    move-result-object p2

    .line 103
    iget p2, p2, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 104
    int-to-float p2, p2

    .line 106
    mul-float/2addr p2, v2

    .line 107
    cmpl-float p2, v1, p2

    .line 108
    if-eqz p2, :cond_2

    .line 110
    :cond_1
    const-string p2, "OneHandedController"

    .line 112
    const-string v0, "onDisplayConfigurationChanged configuration has changed"

    .line 114
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 119
    const/16 v0, 0x16

    .line 121
    invoke-static {p2, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$mstopOneHanded(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    .line 123
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateDisplayLayout(I)V

    .line 128
    :cond_3
    :goto_0
    return-void
    .line 131
.end method

.method public bridge synthetic onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onFixedRotationFinished(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onFixedRotationStarted(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onKeepClearAreasChanged(ILjava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
