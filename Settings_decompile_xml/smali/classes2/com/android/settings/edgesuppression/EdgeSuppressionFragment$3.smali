.class Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$3;
.super Ljava/lang/Object;
.source "EdgeSuppressionFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SeekBarPreference$StopTrackingTouchListener;


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

    .line 197
    iput-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$3;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopTrackingTouch()V
    .locals 1

    .line 199
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment$3;->this$0:Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;

    invoke-static {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$fgetmPrefCustomize(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;->-$$Nest$msetEdgeSuppression(Lcom/android/settings/edgesuppression/EdgeSuppressionFragment;Lmiuix/preference/RadioButtonPreference;)V

    return-void
.end method
