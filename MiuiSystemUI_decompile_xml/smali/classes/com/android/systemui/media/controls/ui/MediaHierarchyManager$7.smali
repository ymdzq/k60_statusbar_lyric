.class public final Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shade/ShadeStateEvents$ShadeStateEventsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$7;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onExpandImmediateChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$7;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->skipQqsOnExpansion:Z

    .line 4
    const/4 p1, 0x3

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0, p1}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;ZI)V

    .line 8
    return-void
    .line 11
.end method
