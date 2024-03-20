.class Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$2;
.super Ljava/lang/Object;
.source "EdgeSuppressionFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->initSeekBarFragment()V
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

    .line 184
    iput-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$2;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$2;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$mgetSeekBarValue(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;I)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fputmTipAreaWidth(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;I)V

    .line 188
    iget-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$2;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-static {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fgetmEdgeSuppressionManager(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->isSupportSensor()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$2;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-static {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fgetmSuppressionTipAreaView(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)Lcom/android/settings/edgesuppression/SuppressionTipAreaView;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$mupdateSuppreesionTipAreaView(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;Lcom/android/settings/edgesuppression/SuppressionTipAreaView;)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$2;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-static {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fgetmTipAreaWidth(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$msetRestrictedViewWidth(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
