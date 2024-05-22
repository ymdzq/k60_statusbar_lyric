.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final untruncatedChildCounts:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;->untruncatedChildCounts:Landroid/util/ArrayMap;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator$attach$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeFinalizeFilterListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;)V

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator$attach$2;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator$attach$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;)V

    .line 12
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderGroupListeners:Ljava/util/List;

    .line 17
    check-cast p0, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method
