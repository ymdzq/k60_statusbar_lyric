.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 11
    iget-object v1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 13
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsController;

    .line 19
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    move-object v2, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    move-object v3, v2

    .line 55
    check-cast v3, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 56
    iget-object v3, v3, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 58
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 60
    move-result v3

    .line 63
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 67
    move-object v5, v4

    .line 68
    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 69
    iget-object v5, v5, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 71
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 73
    move-result v5

    .line 76
    if-ge v3, v5, :cond_3

    .line 77
    move-object v2, v4

    .line 79
    move v3, v5

    .line 80
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v4

    .line 84
    if-nez v4, :cond_2

    .line 85
    :goto_0
    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 87
    if-eqz v2, :cond_4

    .line 89
    new-instance v1, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 91
    invoke-direct {v1, v2}, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;-><init>(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 93
    goto :goto_1

    .line 96
    :cond_4
    sget-object v1, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION:Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 97
    :goto_1
    iput-object v1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 99
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 101
    iget-object v1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 103
    invoke-virtual {p1, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->updatePreferences(Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 105
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 108
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 110
    if-nez p1, :cond_6

    .line 112
    goto :goto_2

    .line 114
    :cond_6
    move-object v0, p1

    .line 115
    :goto_2
    invoke-static {p0, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->reload$default(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V

    .line 116
    return-void
    .line 119
.end method
