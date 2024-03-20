.class public final synthetic Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;

    .line 2
    sub-int/2addr p5, p3

    .line 4
    sub-int/2addr p9, p7

    .line 5
    if-eq p5, p9, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->onHeightChanged()V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    :goto_0
    return-void
    .line 17
.end method
