.class public final Lcom/android/systemui/shade/transition/ShadeTransitionController$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/transition/ShadeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/transition/ShadeTransitionController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController$1;->this$0:Lcom/android/systemui/shade/transition/ShadeTransitionController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController$1;->this$0:Lcom/android/systemui/shade/transition/ShadeTransitionController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p1

    .line 9
    const v0, 0x7f05006d    # @bool/config_use_split_notification_shade 'false'

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 13
    move-result p1

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/shade/transition/ShadeTransitionController;->inSplitShade:Z

    .line 17
    return-void
    .line 19
.end method
