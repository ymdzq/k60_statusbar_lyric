.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showAppRemovalDialog$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showAppRemovalDialog$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showAppRemovalDialog$1;->$componentName:Landroid/content/ComponentName;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_6

    .line 8
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showAppRemovalDialog$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 10
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 12
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showAppRemovalDialog$1;->$componentName:Landroid/content/ComponentName;

    .line 20
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 24
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_0

    .line 29
    move p1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;

    .line 33
    invoke-direct {v1, v0, p1, v2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;-><init>(Ljava/lang/Object;Lcom/android/systemui/controls/controller/ControlsControllerImpl;I)V

    .line 35
    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 38
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 40
    invoke-virtual {p1, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 42
    const/4 p1, 0x1

    .line 45
    :goto_0
    if-nez p1, :cond_1

    .line 46
    goto/16 :goto_3

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showAppRemovalDialog$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 50
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    .line 52
    check-cast p1, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;

    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->getSelectedComponent()Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    .line 56
    move-result-object p1

    .line 59
    const/4 v0, 0x0

    .line 60
    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->componentName:Landroid/content/ComponentName;

    .line 63
    goto :goto_1

    .line 65
    :cond_2
    move-object p1, v0

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showAppRemovalDialog$1;->$componentName:Landroid/content/ComponentName;

    .line 67
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showAppRemovalDialog$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 75
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    .line 77
    check-cast p1, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 81
    move-result-object p1

    .line 84
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 85
    move-result-object p1

    .line 88
    const-string v1, "controls_component"

    .line 89
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    move-result-object p1

    .line 94
    const-string v1, "controls_structure"

    .line 95
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    move-result-object p1

    .line 100
    const-string v1, "controls_is_panel"

    .line 101
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    move-result-object p1

    .line 106
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showAppRemovalDialog$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 110
    iget-object v1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 112
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 114
    move-result-object v1

    .line 117
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsController;

    .line 118
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 125
    move-result-object v1

    .line 128
    invoke-virtual {p1, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getPreferredSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;

    .line 129
    move-result-object p1

    .line 132
    sget-object v1, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION:Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 133
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    move-result p1

    .line 138
    if-eqz p1, :cond_4

    .line 139
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showAppRemovalDialog$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 141
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    .line 143
    check-cast p1, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;

    .line 145
    invoke-virtual {p1}, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 147
    move-result-object p1

    .line 150
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 151
    move-result-object p1

    .line 154
    const-string/jumbo v1, "should_add_default_panel"

    .line 155
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    move-result-object p1

    .line 161
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showAppRemovalDialog$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 165
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 167
    if-nez p1, :cond_5

    .line 169
    goto :goto_2

    .line 171
    :cond_5
    move-object v0, p1

    .line 172
    :goto_2
    invoke-static {p0, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->reload$default(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V

    .line 173
    :cond_6
    :goto_3
    return-void
    .line 176
.end method
