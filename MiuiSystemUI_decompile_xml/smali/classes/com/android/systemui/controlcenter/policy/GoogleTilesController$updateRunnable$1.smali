.class public final Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateRunnable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/GoogleTilesController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateRunnable$1;->this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateRunnable$1;->this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->access$updateGHomeAvailable(Lcom/android/systemui/controlcenter/policy/GoogleTilesController;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateRunnable$1;->this$0:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 7
    invoke-static {p0}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->access$updateGPayAvailable(Lcom/android/systemui/controlcenter/policy/GoogleTilesController;)V

    .line 9
    return-void
    .line 12
.end method
