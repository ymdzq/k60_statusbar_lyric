.class public final Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# instance fields
.field public final rootController:Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;

.field public final specBuilder:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;

.field public final stackController:Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;

.field public final viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

.field public final viewDiffer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;

.field public final viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move-object v1, p3

    .line 6
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->stackController:Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;

    .line 7
    move-object/from16 v6, p10

    .line 9
    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    .line 11
    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;

    .line 13
    new-instance v1, Landroid/view/View;

    .line 15
    move-object v2, p1

    .line 17
    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    move-object v2, p2

    .line 21
    invoke-direct {v7, p2, v1}, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Landroid/view/View;)V

    .line 22
    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->rootController:Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;

    .line 25
    new-instance v8, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;

    .line 27
    move-object v1, v8

    .line 29
    move-object v2, p4

    .line 30
    move-object v3, p6

    .line 31
    move-object/from16 v4, p7

    .line 32
    move-object v5, p5

    .line 34
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;)V

    .line 35
    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->specBuilder:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;

    .line 38
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;

    .line 40
    move-object/from16 v2, p9

    .line 42
    invoke-direct {v1, v7, v2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;)V

    .line 44
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->viewDiffer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;

    .line 47
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;

    .line 49
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;)V

    .line 51
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;

    .line 54
    return-void
    .line 56
.end method


# virtual methods
.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "rootController"

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->rootController:Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string/jumbo v0, "specBuilder"

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->specBuilder:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;

    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "viewDiffer"

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->viewDiffer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;

    .line 21
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    return-void
    .line 26
.end method
