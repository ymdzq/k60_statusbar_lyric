.class Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$1;
.super Ljava/lang/Object;
.source "EdgeSuppressionFragment.java"

# interfaces
.implements Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$1;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(I)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$1;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-static {v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fgetmLaySensorState(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$1;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-static {v0, p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fputmLaySensorState(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;I)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$1;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fgetmLaySensorState(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)I

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$1;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fputmTipAreaWidth(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;I)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$1;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fgetmEdgeSuppressionManager(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getConditionSize(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fputmTipAreaWidth(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;I)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$1;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fgetmEdgeSuppressionManager(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getConditionSize(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fputmTipAreaWidth(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;I)V

    .line 84
    :goto_0
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$1;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-static {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fgetmSuppressionTipAreaView(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)Lcom/android/settings/edgesuppression/SuppressionTipAreaView;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$mupdateSuppreesionTipAreaView(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;Lcom/android/settings/edgesuppression/SuppressionTipAreaView;)V

    :cond_3
    return-void
.end method
